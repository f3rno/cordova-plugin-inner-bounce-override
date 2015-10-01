Sets the 'bounces' prop to false (NO) on the inner UIWebOverflowScrollView that
gets created on iOS when using `-webkit-overflow-scrolling: touch;`

To use, call `window.InnerBounceOverride.trigger();` after the scroll view gets
created.
