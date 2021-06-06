package com.livelike.ll_flutter_demo

import android.content.Context
import android.graphics.Color
import android.view.View
import android.widget.TextView
import io.flutter.plugin.platform.PlatformView

class LLView (context: Context, id: Int, creationParams: Map<String?, Any?>?) : PlatformView {

    private val chatWidgetStackedView: ChatWidgetStackedView = ChatWidgetStackedView(context)

    override fun getView(): View {
        return chatWidgetStackedView
    }

    override fun dispose() {}

    init {

        val clientId : String = creationParams?.get("clientId").toString()
        val programId : String = creationParams?.get("programId").toString()
        chatWidgetStackedView.setupClientAndProgramId(clientId, programId)

//        textView.textSize = 72f
//        textView.setBackgroundColor(Color.rgb(255, 255, 255))
//        textView.text = "Rendered on a native Android view (id: $id)"
    }
}