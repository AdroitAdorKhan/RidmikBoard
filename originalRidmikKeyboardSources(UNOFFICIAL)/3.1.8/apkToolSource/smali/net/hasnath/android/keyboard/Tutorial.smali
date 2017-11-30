.class public Lnet/hasnath/android/keyboard/Tutorial;
.super Ljava/lang/Object;
.source "Tutorial.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/hasnath/android/keyboard/Tutorial$Bubble;
    }
.end annotation


# static fields
.field private static final MSG_SHOW_BUBBLE:I


# instance fields
.field private mBubbleIndex:I

.field private mBubbles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnet/hasnath/android/keyboard/Tutorial$Bubble;",
            ">;"
        }
    .end annotation
.end field

.field mHandler:Landroid/os/Handler;

.field private mIme:Lnet/hasnath/android/keyboard/LatinIME;

.field private mInputView:Landroid/view/View;

.field private mLocation:[I


# direct methods
.method public constructor <init>(Lnet/hasnath/android/keyboard/LatinIME;Lnet/hasnath/android/keyboard/LatinKeyboardView;)V
    .locals 22
    .param p1, "ime"    # Lnet/hasnath/android/keyboard/LatinIME;
    .param p2, "inputView"    # Lnet/hasnath/android/keyboard/LatinKeyboardView;

    .prologue
    .line 161
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lnet/hasnath/android/keyboard/Tutorial;->mBubbles:Ljava/util/List;

    .line 43
    const/4 v3, 0x2

    new-array v3, v3, [I

    move-object/from16 v0, p0

    iput-object v3, v0, Lnet/hasnath/android/keyboard/Tutorial;->mLocation:[I

    .line 49
    new-instance v3, Lnet/hasnath/android/keyboard/Tutorial$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lnet/hasnath/android/keyboard/Tutorial$1;-><init>(Lnet/hasnath/android/keyboard/Tutorial;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lnet/hasnath/android/keyboard/Tutorial;->mHandler:Landroid/os/Handler;

    .line 162
    invoke-virtual/range {p2 .. p2}, Lnet/hasnath/android/keyboard/LatinKeyboardView;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 163
    .local v4, "context":Landroid/content/Context;
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lnet/hasnath/android/keyboard/Tutorial;->mIme:Lnet/hasnath/android/keyboard/LatinIME;

    .line 164
    invoke-virtual/range {p2 .. p2}, Lnet/hasnath/android/keyboard/LatinKeyboardView;->getWidth()I

    move-result v21

    .line 165
    .local v21, "inputWidth":I
    div-int/lit8 v7, v21, 0x14

    .line 166
    .local v7, "x":I
    new-instance v2, Lnet/hasnath/android/keyboard/Tutorial$Bubble;

    .line 167
    const v6, 0x7f020032

    const/4 v8, 0x0

    .line 168
    const v9, 0x7f0800b2

    const v10, 0x7f0800b0

    move-object/from16 v3, p0

    move-object/from16 v5, p2

    .line 166
    invoke-direct/range {v2 .. v10}, Lnet/hasnath/android/keyboard/Tutorial$Bubble;-><init>(Lnet/hasnath/android/keyboard/Tutorial;Landroid/content/Context;Landroid/view/View;IIIII)V

    .line 169
    .local v2, "bWelcome":Lnet/hasnath/android/keyboard/Tutorial$Bubble;
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/hasnath/android/keyboard/Tutorial;->mBubbles:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    new-instance v8, Lnet/hasnath/android/keyboard/Tutorial$Bubble;

    .line 171
    const v12, 0x7f020032

    const/4 v14, 0x0

    .line 172
    const v15, 0x7f0800b3

    const v16, 0x7f0800b0

    move-object/from16 v9, p0

    move-object v10, v4

    move-object/from16 v11, p2

    move v13, v7

    .line 170
    invoke-direct/range {v8 .. v16}, Lnet/hasnath/android/keyboard/Tutorial$Bubble;-><init>(Lnet/hasnath/android/keyboard/Tutorial;Landroid/content/Context;Landroid/view/View;IIIII)V

    .line 173
    .local v8, "bAccents":Lnet/hasnath/android/keyboard/Tutorial$Bubble;
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/hasnath/android/keyboard/Tutorial;->mBubbles:Ljava/util/List;

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    new-instance v9, Lnet/hasnath/android/keyboard/Tutorial$Bubble;

    .line 175
    const v13, 0x7f020033

    const/4 v15, 0x0

    .line 176
    const v16, 0x7f0800b4

    const v17, 0x7f0800b0

    move-object/from16 v10, p0

    move-object v11, v4

    move-object/from16 v12, p2

    move v14, v7

    .line 174
    invoke-direct/range {v9 .. v17}, Lnet/hasnath/android/keyboard/Tutorial$Bubble;-><init>(Lnet/hasnath/android/keyboard/Tutorial;Landroid/content/Context;Landroid/view/View;IIIII)V

    .line 177
    .local v9, "b123":Lnet/hasnath/android/keyboard/Tutorial$Bubble;
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/hasnath/android/keyboard/Tutorial;->mBubbles:Ljava/util/List;

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    new-instance v10, Lnet/hasnath/android/keyboard/Tutorial$Bubble;

    .line 179
    const v14, 0x7f020033

    const/16 v16, 0x0

    .line 180
    const v17, 0x7f0800b5

    const v18, 0x7f0800b0

    move-object/from16 v11, p0

    move-object v12, v4

    move-object/from16 v13, p2

    move v15, v7

    .line 178
    invoke-direct/range {v10 .. v18}, Lnet/hasnath/android/keyboard/Tutorial$Bubble;-><init>(Lnet/hasnath/android/keyboard/Tutorial;Landroid/content/Context;Landroid/view/View;IIIII)V

    .line 181
    .local v10, "bABC":Lnet/hasnath/android/keyboard/Tutorial$Bubble;
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/hasnath/android/keyboard/Tutorial;->mBubbles:Ljava/util/List;

    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    new-instance v11, Lnet/hasnath/android/keyboard/Tutorial$Bubble;

    .line 183
    const v15, 0x7f020033

    const/16 v17, 0x0

    .line 184
    const v18, 0x7f0800b6

    const v19, 0x7f0800b0

    move-object/from16 v12, p0

    move-object v13, v4

    move-object/from16 v14, p2

    move/from16 v16, v7

    .line 182
    invoke-direct/range {v11 .. v19}, Lnet/hasnath/android/keyboard/Tutorial$Bubble;-><init>(Lnet/hasnath/android/keyboard/Tutorial;Landroid/content/Context;Landroid/view/View;IIIII)V

    .line 185
    .local v11, "bSettings":Lnet/hasnath/android/keyboard/Tutorial$Bubble;
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/hasnath/android/keyboard/Tutorial;->mBubbles:Ljava/util/List;

    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    new-instance v12, Lnet/hasnath/android/keyboard/Tutorial$Bubble;

    .line 187
    const v16, 0x7f020032

    const/16 v18, 0x0

    .line 188
    const v19, 0x7f0800b7

    const v20, 0x7f0800b1

    move-object/from16 v13, p0

    move-object v14, v4

    move-object/from16 v15, p2

    move/from16 v17, v7

    .line 186
    invoke-direct/range {v12 .. v20}, Lnet/hasnath/android/keyboard/Tutorial$Bubble;-><init>(Lnet/hasnath/android/keyboard/Tutorial;Landroid/content/Context;Landroid/view/View;IIIII)V

    .line 189
    .local v12, "bDone":Lnet/hasnath/android/keyboard/Tutorial$Bubble;
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/hasnath/android/keyboard/Tutorial;->mBubbles:Ljava/util/List;

    invoke-interface {v3, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lnet/hasnath/android/keyboard/Tutorial;->mInputView:Landroid/view/View;

    .line 191
    return-void
.end method

.method static synthetic access$0(Lnet/hasnath/android/keyboard/Tutorial;)[I
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lnet/hasnath/android/keyboard/Tutorial;->mLocation:[I

    return-object v0
.end method


# virtual methods
.method close()Z
    .locals 2

    .prologue
    .line 234
    iget-object v0, p0, Lnet/hasnath/android/keyboard/Tutorial;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 235
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/Tutorial;->hide()V

    .line 236
    const/4 v0, 0x1

    return v0
.end method

.method hide()V
    .locals 3

    .prologue
    .line 227
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lnet/hasnath/android/keyboard/Tutorial;->mBubbles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 230
    iget-object v1, p0, Lnet/hasnath/android/keyboard/Tutorial;->mInputView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 231
    return-void

    .line 228
    :cond_0
    iget-object v1, p0, Lnet/hasnath/android/keyboard/Tutorial;->mBubbles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/hasnath/android/keyboard/Tutorial$Bubble;

    invoke-virtual {v1}, Lnet/hasnath/android/keyboard/Tutorial$Bubble;->hide()V

    .line 227
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method next()Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 201
    iget v1, p0, Lnet/hasnath/android/keyboard/Tutorial;->mBubbleIndex:I

    if-ltz v1, :cond_1

    .line 203
    iget-object v1, p0, Lnet/hasnath/android/keyboard/Tutorial;->mBubbles:Ljava/util/List;

    iget v4, p0, Lnet/hasnath/android/keyboard/Tutorial;->mBubbleIndex:I

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/hasnath/android/keyboard/Tutorial$Bubble;

    invoke-virtual {v1}, Lnet/hasnath/android/keyboard/Tutorial$Bubble;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    .line 223
    :goto_0
    return v1

    .line 207
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lnet/hasnath/android/keyboard/Tutorial;->mBubbleIndex:I

    if-le v0, v1, :cond_2

    .line 211
    .end local v0    # "i":I
    :cond_1
    iget v1, p0, Lnet/hasnath/android/keyboard/Tutorial;->mBubbleIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lnet/hasnath/android/keyboard/Tutorial;->mBubbleIndex:I

    .line 212
    iget v1, p0, Lnet/hasnath/android/keyboard/Tutorial;->mBubbleIndex:I

    iget-object v4, p0, Lnet/hasnath/android/keyboard/Tutorial;->mBubbles:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lt v1, v4, :cond_3

    .line 213
    iget-object v1, p0, Lnet/hasnath/android/keyboard/Tutorial;->mInputView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 214
    iget-object v1, p0, Lnet/hasnath/android/keyboard/Tutorial;->mIme:Lnet/hasnath/android/keyboard/LatinIME;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lnet/hasnath/android/keyboard/LatinIME;->sendDownUpKeyEvents(I)V

    .line 215
    iget-object v1, p0, Lnet/hasnath/android/keyboard/Tutorial;->mIme:Lnet/hasnath/android/keyboard/LatinIME;

    invoke-virtual {v1}, Lnet/hasnath/android/keyboard/LatinIME;->tutorialDone()V

    move v1, v3

    .line 216
    goto :goto_0

    .line 208
    .restart local v0    # "i":I
    :cond_2
    iget-object v1, p0, Lnet/hasnath/android/keyboard/Tutorial;->mBubbles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/hasnath/android/keyboard/Tutorial$Bubble;

    invoke-virtual {v1}, Lnet/hasnath/android/keyboard/Tutorial$Bubble;->hide()V

    .line 207
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 218
    .end local v0    # "i":I
    :cond_3
    iget v1, p0, Lnet/hasnath/android/keyboard/Tutorial;->mBubbleIndex:I

    const/4 v4, 0x3

    if-eq v1, v4, :cond_4

    iget v1, p0, Lnet/hasnath/android/keyboard/Tutorial;->mBubbleIndex:I

    const/4 v4, 0x4

    if-ne v1, v4, :cond_5

    .line 219
    :cond_4
    iget-object v1, p0, Lnet/hasnath/android/keyboard/Tutorial;->mIme:Lnet/hasnath/android/keyboard/LatinIME;

    iget-object v1, v1, Lnet/hasnath/android/keyboard/LatinIME;->mKeyboardSwitcher:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    invoke-virtual {v1}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->toggleSymbols()V

    .line 221
    :cond_5
    iget-object v1, p0, Lnet/hasnath/android/keyboard/Tutorial;->mHandler:Landroid/os/Handler;

    .line 222
    iget-object v4, p0, Lnet/hasnath/android/keyboard/Tutorial;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lnet/hasnath/android/keyboard/Tutorial;->mBubbles:Ljava/util/List;

    iget v6, p0, Lnet/hasnath/android/keyboard/Tutorial;->mBubbleIndex:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0x1f4

    .line 221
    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move v1, v2

    .line 223
    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 240
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 241
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/Tutorial;->next()Z

    .line 243
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method start()V
    .locals 2

    .prologue
    .line 194
    iget-object v0, p0, Lnet/hasnath/android/keyboard/Tutorial;->mInputView:Landroid/view/View;

    iget-object v1, p0, Lnet/hasnath/android/keyboard/Tutorial;->mLocation:[I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 195
    const/4 v0, -0x1

    iput v0, p0, Lnet/hasnath/android/keyboard/Tutorial;->mBubbleIndex:I

    .line 196
    iget-object v0, p0, Lnet/hasnath/android/keyboard/Tutorial;->mInputView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 197
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/Tutorial;->next()Z

    .line 198
    return-void
.end method
