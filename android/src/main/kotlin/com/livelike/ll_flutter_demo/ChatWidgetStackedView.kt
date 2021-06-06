package com.livelike.ll_flutter_demo

import android.content.Context
import android.view.View
import android.widget.FrameLayout
import android.widget.LinearLayout
import androidx.constraintlayout.widget.ConstraintLayout
import com.livelike.engagementsdk.EngagementSDK
import com.livelike.engagementsdk.chat.ChatView
import com.livelike.engagementsdk.widget.view.WidgetView

class ChatWidgetStackedView(context: Context) : ConstraintLayout(context) {


    fun setupClientAndProgramId(clientId: String, programId: String) {
        inflate(context, R.layout.widget_chat_stacked, this)
        val sdk = EngagementSDK(clientId, context.applicationContext)
        val contentSession = sdk.createContentSession(programId)
        findViewById<WidgetView>(R.id.widget_view).setSession(contentSession)
        findViewById<ChatView>(R.id.chat_view).setSession(contentSession.chatSession)
    }

}