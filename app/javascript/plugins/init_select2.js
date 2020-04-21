import $ from 'jquery';
import 'select2';

const initSelect2 = () => {
  $('.sector-picker').select2({
    allowClear: true,
    placeholder: "Select sectors you're interested in...",
    width: '100%'
  });
    $('.skill-picker').select2({
    placeholder: "Select skills...",
    allowClear: true
  });
  $('.search_category').select2({
    placeholder: "Select job sectors...",
    allowClear: true,
    width: 'resolve'
  });

  var sectors = $('.targeter').data('sectors');

  $('.search_category').val(sectors);
  $('.search_category').trigger('change');
};

export { initSelect2 };
