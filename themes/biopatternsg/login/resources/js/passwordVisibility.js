export const initPasswordVisibility = () => {
    const toggleButtons = document.querySelectorAll('[data-password-toggle]');
    toggleButtons.forEach((button) => {
        button.onclick = (e) => {
            e.preventDefault();
            const controlId = button.getAttribute('aria-controls');
            if (!controlId) return;

            const input = document.getElementById(controlId);
            if (!input) return;

            const isPassword = input.type === 'password';
            input.type = isPassword ? 'text' : 'password';

            const labelShow = button.dataset.labelShow || 'Show password';
            const labelHide = button.dataset.labelHide || 'Hide password';
            button.setAttribute('aria-label', isPassword ? labelHide : labelShow);

            const eyeShow = button.querySelector('.eye-show');
            const eyeHide = button.querySelector('.eye-hide');
            if (eyeShow && eyeHide) {
                eyeShow.style.display = isPassword ? 'none' : 'block';
                eyeHide.style.display = isPassword ? 'block' : 'none';
            }

            const iconElem = button.querySelector('i');
            if (iconElem && button.dataset.iconShow && button.dataset.iconHide) {
                iconElem.className = isPassword ? button.dataset.iconHide : button.dataset.iconShow;
            }
        };
    });
};

if (document.readyState === 'loading') {
    document.addEventListener('DOMContentLoaded', initPasswordVisibility);
} else {
    initPasswordVisibility();
}
