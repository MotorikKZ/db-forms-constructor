package com.abssoft.constructor.client.data;

import com.abssoft.constructor.client.data.TimeoutEvent.TimeoutType;
import com.google.gwt.event.shared.EventHandler;

public interface TimeoutEventHandler extends EventHandler {
	public void onTimeout(TimeoutType timeoutType);
}
