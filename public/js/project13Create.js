/*
 * availMembers:	Stores all Members for the Organization that haven't been selected
 *		fields:	id			The id field from the database
 *				name		Concatenation of last_name, first_name from database
 */
var availMembers = [];

/*
 * usedMembers:	Stores Members for the Organization that have been selected
 *		fields:	selectName	The id (and name) of the select control that has this Member selected
 *				member		The Member object contained in this item
 *					id		The id of the Member from the database
 *					name	The name of the Member, as last_name, first_name
 */
var usedMembers = [];

/*
 * onClick handler for all the reset buttons next to the select controls
 */
var resetButtons = $("button[id$='reset']");
resetButtons.on('click', function (e) {
	resetSelect(e.target);
});

/*
 * jQuery generated array of all select controls that don't include organization
 */
var selectControls = $("select[id!='organization']");
selectControls.addClass("select-width-100");


/*
 * onChange handler for the organization select control
 */
$('#organization').on('change', function (e) {
// When organization changes, need to initialize the member selects
	initSelectControls(parseInt(e.target.value));
});


/*
 *  onChange handler for all select controls except organization
 */
$("select[id!='organization']").on('change', function (e) {
// When any of the member selects changes, need to update availMembers and usedMembers
	updateSelectControls(e.target);
});


/*
 * Initialize the select controls, as when a different organization is selected
 * isOrgP13 flags that the controls are on an Organization's Create Project 13 form
 */
function initSelectControls(orgId, isOrgP13 = false) {
	var control;
	var getRoute = isOrgP13 ? '/org-members-no-p13?org_id=' : '/org-members?org_id=';
	$.get(getRoute + orgId, function (data) {
		// Initialize availMembers array
		initAvailMembers(data);
		// Initialize usedMembers array
		usedMembers = [];
		$.each(selectControls, function (index, controlId) {
			// Use jquery to select the control
			control = $('#' + controlId.name);

			// Ensure the select control is empty, then add each option to the select
			control.empty();
			control.append('<option value="0">[Select]</option>');
			availMembers.forEach(function (member) {
				var option = '<option value=' + member.id + '>' + member.name + '</option>';
				control.append(option);
			});
		});
	});
}

/*
 *  Initialize the select controls for an Organization's create-p13 form
 *  Receives parameter 'data' which is JSON data of all Members for the Organization
 */
function initOrgSelectControls(data) {
}


/*
 * Update select controls, as when a selection changes and all others must be updated
 */
function updateSelectControls(select) {
	// First update availMembers and usedMembers
	updateCollections(select);

	loadMemberSelects();

	setSelectedMembers();
}

/*
 * Update availMembers and usedMembers, to be used when updating the select controls
 */
function updateCollections(select) {
	var member;
	// First check whether selection was changed to '[Select]'
	if (parseInt(select.value) === 0) {
		// Restore the Member referenced by 'select' to availMembers
		member = removeUsedMember(select.name);
		addAvailMember(member);
	}
	// Check whether the select control is already in usedMembers
	else if (!selectIsUsed(select.name)) {
		// Move the Member from availMembers to UsedMembers
		addUsedMember(select);
	}
	// Otherwise this select control's value was just change
	// Remove the existing Member from usedMembers, restore it to availMembers, then add the selected Member to usedMembers
	else {
		member = removeUsedMember(select.name);
		addAvailMember(member);
		addUsedMember(select);
	}
}


/*
 * Load each Member select control, including the select control's selected Member
 * A selected Member won't be included in other select controls until that select control is changed to '[Select]'
 */
function loadMemberSelects() {
	// Step through each select control
	var selectArray = [];
	var controlText = '';

	$.each(selectControls, function (index, selectControl) {
		var sc = "#" + selectControl.name;
		$(sc).empty();

		selectArray = buildSelectArray(selectControl.name);

		$(sc).append('<option value="0">[Select]</option>');

		selectArray.forEach(function (member) {
			var controlText = '<option value="' + member.id + '">' + member.name + "</option>'";
			$(sc).append(controlText);
		});

		var member = getSelectMember(selectControl.name);
		if (!member) {
			$(sc).val(0);
		}
		else {
			$(sc).val(member.id);
		}
		
	});
}


/*
 * Build an array of Members based on availMembers and usedMembers, 
 * including the usedMember for the current select control
 */
function buildSelectArray(selectName) {
	var usedMember;
	var selectArray = [];

	if (selectIsUsed(selectName)) {
		usedMember = getSelectMember(selectName);
		// Initialize selectArray with the Member referenced by the select control
		selectArray.push({
			id: usedMember.id,
			name: usedMember.name
		});
	}


	// Add all availMembers to selectArray
	availMembers.forEach(function (member) {
		selectArray.push({
			id: member.id,
			name: member.name
		});
	});

	// Sort the items in selectArray by the member.name
	selectArray.sort(compareMembers);

	return selectArray;
}

/*
 * Update availMembers, removing or adding when one is selected in a select control
 */
function updateAvailMembers(data) {
	if (availMembers.length === 0) {
		initAvailMembers(data);
	}
	else {

	}

}

/*
 * Initialize availMembers, as when the organization changes
 * data variable is collected in initSelectControls getRoute
 */
function initAvailMembers(data) {
// Ensure that availItems is empty
	availMembers = [];
	for (var i = 0; i < data.length; i++) {
		availMembers.push({
			id: data[i].id,
			name: data[i].last_name + ', ' + data[i].first_name
		});
	}
}

/*
 * Add the Member referenced in 'member' to availMembers and re-sort
 */
function addAvailMember(member) {
	availMembers.push({
		id:		member.id,
		name:	member.name
	});
}

/*
 * Remove the Member referenced by 'id' from availMembers and re-sort
 */
function removeAvailMember(id) {
	var removedMember;
	var member;

	for (var i = 0; i < availMembers.length; i++) {
		member = availMembers[i];
		if (member.id === id) {
			var pos = availMembers.indexOf(member);
			removedMember = availMembers.splice(pos, 1)[0];
			break;
		}
	}

	sortAvailMembers();

	return removedMember;
}

function sortAvailMembers() {
	availMembers.sort(compareMembers);
}


/*
 * Compare function used to sort Members
 */
function compareMembers(a, b) {
	if (a.name < b.name) {
		return -1;
	}
	if (a.name > b.name) {
		return 1;
	}
	return 0;
}

/*
 * Get the name from availMembers using the Member ID
 */
function getAvailMemberName(memberId) {
	availMembers.forEach(function (member) {
		if (member.id === memberId) {
			return member.name;
		}
	});
	return '';
}

/*
 * Determine whether the select control referenced by 'data' is in usedMembers
 */
function selectIsUsed(selectName) {
	// Returns true if select control's name is found in usedMembers
	var result = false;

	for(var i=0; i<usedMembers.length; i++) {
		var usedMember = usedMembers[i];
		if (usedMember.selectName === selectName) {
			result = true;
			break;
		}
	}
	
	return result;
}

/*
 * Initialize usedMembers to an empty array
 */
function initUsedMembers() {
	usedMembers = [];
}


/*
 * Remove the selected Member from availMembers and add to UsedMembers
 */
function addUsedMember(select) {
	// Remove selected member from availMembers ...
	// select.value is id of Member
	var member = removeAvailMember(parseInt(select.value));

	// ... and save selected member to usedMembers ...
	usedMembers.push({
		selectName: select.name,
		usedMember: member
	});

}


/*
 * Remove selected Member from usedMembers and return the Member
 */
function removeUsedMember(selectName) {
	var removedMember;
	for (var i = 0; i < usedMembers.length; i++) {
		if (usedMembers[i].selectName === selectName) {
			removedMember = usedMembers.splice(i, 1)[0].usedMember;
			break;
		}
	}

	return removedMember;
}


/*
 * Get the Member referenced in the select control with 'selectName'
 */
function getSelectMember(selectName) {
	var usedMember;

	for (var i = 0; i < usedMembers.length; i++) {
		if (usedMembers[i].selectName === selectName) {
			usedMember = usedMembers[i].usedMember;
			break;
		}
	}

	return usedMember;
}

/*
 * Set the selected Member with the ID of id
 */
function setSelectedMembers() {
	usedMembers.forEach(function(usedMember) {
		var member = usedMember.usedMember;
		var selectName = usedMember.selectName;
		$('#' + selectName).val(member.id);
	});
}


/*
 * Set text in testDiv
 */
function setTestDiv(text) {
	testDiv = $('#test');
	testDiv.empty();
	testDiv.append(text);

}

/*
 * Get the select control's id referenced by the reset button
 */
function getResetSelectId(btn) {
	var name = btn.id;
	var i = name.indexOf('reset');
	var selectName = name.substring(0, i-1);
	
	return selectName;
}

/*
 * Reset the associated select control to value of 0
 */
function resetSelect(btn) {
	var selectName = getResetSelectId(btn);
	
	var removedMember = removeUsedMember(selectName);
	addAvailMember(removedMember);
	
	$("#" + selectName).val(0);
	
	loadMemberSelects();
	
	return selectName;
}