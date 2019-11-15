import '@babel/polyfill';
import 'es5-shim';

import ReactOnRails from 'react-on-rails';

import HelloWorld from '../bundles/HelloWorld/components/HelloWorld';

ReactOnRails.setOptions({
  traceTurbolinks: true,
});

ReactOnRails.register({
  HelloWorld,
});

