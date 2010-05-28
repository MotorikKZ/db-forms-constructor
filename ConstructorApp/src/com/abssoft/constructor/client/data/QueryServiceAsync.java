package com.abssoft.constructor.client.data;

import java.util.Map;

import com.abssoft.constructor.client.data.common.ClientActionType;
import com.abssoft.constructor.client.data.common.ConnectionInfo;
import com.abssoft.constructor.client.metadata.FormMD;
import com.abssoft.constructor.client.metadata.MenusArr;
import com.abssoft.constructor.client.metadata.Row;
import com.abssoft.constructor.client.metadata.RowsArr;
import com.abssoft.constructor.client.metadata.ServerInfoArr;
import com.abssoft.constructor.client.metadata.StaticLookupsArr;
import com.google.gwt.user.client.rpc.AsyncCallback;

public interface QueryServiceAsync {

	public void connect(int ServerIdx, String user, String password, boolean isScript, AsyncCallback<ConnectionInfo> callback);

	public void fetch(int sessionId, String formCode, int gridHashCode, String sortBy, int startRow, int endRow, Map<?, ?> criteria,
			boolean forceFetch, AsyncCallback<RowsArr> callback);

	public void executeDML(int sessionId, String formCode, int gridHashCode, Row oldRow, Row newRow, String actionCode,
			ClientActionType clientActionType, AsyncCallback<Row> callback);

	public void getFormMetaData(int sessionId, String formCode, AsyncCallback<FormMD> callback);

	public void getMenusArr(int sessionId, AsyncCallback<MenusArr> callback);

	public void sessionClose(int sessionId, AsyncCallback<Void> callback);

	public void closeForm(int sessionId, String formCode, int gridHashCode, FormMD formState, AsyncCallback<Void> callback);

	public void getStaticLookupsArr(int sessionId, AsyncCallback<StaticLookupsArr> callback);

	public void getServerInfoArr(AsyncCallback<ServerInfoArr> callback);
}
