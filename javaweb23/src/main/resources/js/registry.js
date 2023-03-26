var username = document.querySelector('#username');
var email = document.querySelector('#email');
var password = document.querySelector('#password');
var confirmPassword = document.querySelector('#confirm-password');
var form = document.querySelector('form');

function showError(input, message) {
    let parent = input.parentElement;
    let small = parent.querySelector('small');
    parent.classList.add("error");
    small.innerText = message;
}
function showSuccess(input) {
    let parent = input.parentElement;
    let small = parent.querySelector('small');

    parent.classList.remove("error");
    small.innerText = '';
}
function checkEmptyError(listInput) {
    let flag = true;
    listInput.forEach(input => {
        input.value = input.value.trim()

        if (input.value == '') {
            flag = false;
            showError(input, 'not be empty')
        } else {
            showSuccess(input)
        }
    });
    return flag;
}
function checkEmailError(input) {
    const regexEmail =
        /^(([^<>()[\]\.,;:\s@\"]+(\.[^<>()[\]\.,;:\s@\"]+)*)|(\".+\"))@(([^<>()[\]\.,;:\s@\"]+\.)+[^<>()[\]\.,;:\s@\"]{2,})$/i;
    input.value = input.value.trim()

    if (regexEmail.test(input.value)) {
        showSuccess(input)
        return true;
    } else {
        showError(input, 'Email Invalid');
        return false;
    }
   
}
function checkLengthError(input, min, max) {
    input.value = input.value.trim()

    if (input.value.length < min) {
        showError(input, `At least ${min} characters`)
        return false
    }
    if (input.value.length > max) {
        showError(input, `No more than ${max} characters`)
        return false
    }
    showSuccess(input);
    return true
}
function checkMatchPasswordError(passwordInput, cfPasswordInput) {
    if (passwordInput.value == '') return false;
    if (passwordInput.value == cfPasswordInput.value) {
        showSuccess(passwordInput, cfPasswordInput)
        return true
    }
    showError(cfPasswordInput, 'Password does not match');
    return false;
}

username.addEventListener('change',function(e) {
    checkEmptyError([username]);
    checkLengthError(username, 3, 45);   
})

email.addEventListener('change',function(e) {
    checkEmptyError([email]);
    checkEmailError(email);
})

password.addEventListener('change',function(e) {
    checkEmptyError([password]);
    checkLengthError(password, 8, 45);
})

confirmPassword.addEventListener('change',function(e) {
    checkEmptyError([confirmPassword]);
    checkMatchPasswordError(password, confirmPassword)
})

form.addEventListener('submit', function (e) {
	e.preventDefault();
    let isEmptyError = checkEmptyError([username, email, password, confirmPassword])
    let isEmailError = checkEmailError(email)
    let isUsernameLengthError = checkLengthError(username, 3, 45)
    let isPasswordLengthError = checkLengthError(password, 8, 45)
    let isMatchError = checkMatchPasswordError(password, confirmPassword);
    submitForm(isEmailError, isEmptyError, isMatchError, isPasswordLengthError, isUsernameLengthError)
})
function submitForm(isEmailError, isEmptyError, isMatchError, isPasswordLengthError, isUsernameLengthError){
    if (isEmptyError || isEmailError || isMatchError || isPasswordLengthError || isUsernameLengthError) {
        alert('Registry success!')
        form.submit()
    } else {
//        alert('Nhập lại')
    }
}