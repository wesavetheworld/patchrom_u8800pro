.class public final Lcom/android/internal/telephony/cdma/CdmaMmiCode;
.super Landroid/os/Handler;
.source "CdmaMmiCode.java"

# interfaces
.implements Lcom/android/internal/telephony/MmiCode;


# static fields
.field static final ACTION_REGISTER:Ljava/lang/String; = "**"

.field static final EVENT_SET_COMPLETE:I = 0x1

.field static final LOG_TAG:Ljava/lang/String; = "CDMA_MMI"

.field static final MATCH_GROUP_ACTION:I = 0x2

.field static final MATCH_GROUP_DIALING_NUMBER:I = 0xc

.field static final MATCH_GROUP_POUND_STRING:I = 0x1

.field static final MATCH_GROUP_PWD_CONFIRM:I = 0xb

.field static final MATCH_GROUP_SERVICE_CODE:I = 0x3

.field static final MATCH_GROUP_SIA:I = 0x5

.field static final MATCH_GROUP_SIB:I = 0x7

.field static final MATCH_GROUP_SIC:I = 0x9

.field static final SC_PUK:Ljava/lang/String; = "05"

.field static sPatternSuppService:Ljava/util/regex/Pattern;


# instance fields
.field action:Ljava/lang/String;

.field context:Landroid/content/Context;

.field dialingNumber:Ljava/lang/String;

.field mUiccApp:Lcom/android/internal/telephony/UiccCardApplication;

.field message:Ljava/lang/CharSequence;

.field phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

.field poundString:Ljava/lang/String;

.field pwd:Ljava/lang/String;

.field sc:Ljava/lang/String;

.field sia:Ljava/lang/String;

.field sib:Ljava/lang/String;

.field sic:Ljava/lang/String;

.field state:Lcom/android/internal/telephony/MmiCode$State;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    const-string v0, "((\\*|#|\\*#|\\*\\*|##)(\\d{2,3})(\\*([^*#]*)(\\*([^*#]*)(\\*([^*#]*)(\\*([^*#]*))?)?)?)?#)(.*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->sPatternSuppService:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>(Lcom/android/internal/telephony/cdma/CDMAPhone;Lcom/android/internal/telephony/UiccCardApplication;)V
    .locals 1
    .parameter "phone"
    .parameter "app"

    .prologue
    .line 141
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 67
    sget-object v0, Lcom/android/internal/telephony/MmiCode$State;->PENDING:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->state:Lcom/android/internal/telephony/MmiCode$State;

    .line 142
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    .line 143
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->context:Landroid/content/Context;

    .line 144
    iput-object p2, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mUiccApp:Lcom/android/internal/telephony/UiccCardApplication;

    .line 145
    return-void
.end method

.method private getScString()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 253
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->sc:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 254
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->isPukCommand()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->context:Landroid/content/Context;

    const v1, 0x10400cc

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 259
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private handlePasswordError(I)V
    .locals 2
    .parameter "res"

    .prologue
    .line 231
    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->state:Lcom/android/internal/telephony/MmiCode$State;

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->getScString()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 233
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->context:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 235
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->message:Ljava/lang/CharSequence;

    .line 236
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->onMMIDone(Lcom/android/internal/telephony/cdma/CdmaMmiCode;)V

    .line 237
    return-void
.end method

.method private static makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "s"

    .prologue
    .line 133
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 135
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p0

    goto :goto_0
.end method

.method public static newFromDialString(Ljava/lang/String;Lcom/android/internal/telephony/cdma/CDMAPhone;Lcom/android/internal/telephony/UiccCardApplication;)Lcom/android/internal/telephony/cdma/CdmaMmiCode;
    .locals 3
    .parameter "dialString"
    .parameter "phone"
    .parameter "app"

    .prologue
    .line 105
    const/4 v1, 0x0

    .line 107
    .local v1, ret:Lcom/android/internal/telephony/cdma/CdmaMmiCode;
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->sPatternSuppService:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 110
    .local v0, m:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 111
    new-instance v1, Lcom/android/internal/telephony/cdma/CdmaMmiCode;

    .end local v1           #ret:Lcom/android/internal/telephony/cdma/CdmaMmiCode;
    invoke-direct {v1, p1, p2}, Lcom/android/internal/telephony/cdma/CdmaMmiCode;-><init>(Lcom/android/internal/telephony/cdma/CDMAPhone;Lcom/android/internal/telephony/UiccCardApplication;)V

    .line 112
    .restart local v1       #ret:Lcom/android/internal/telephony/cdma/CdmaMmiCode;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->poundString:Ljava/lang/String;

    .line 113
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->action:Ljava/lang/String;

    .line 114
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->sc:Ljava/lang/String;

    .line 115
    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->sia:Ljava/lang/String;

    .line 116
    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->sib:Ljava/lang/String;

    .line 117
    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->sic:Ljava/lang/String;

    .line 118
    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->pwd:Ljava/lang/String;

    .line 119
    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->dialingNumber:Ljava/lang/String;

    .line 123
    :cond_0
    return-object v1
.end method

.method private onSetComplete(Landroid/os/AsyncResult;)V
    .locals 4
    .parameter "ar"

    .prologue
    const v3, 0x10400b7

    .line 264
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->getScString()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 265
    .local v1, sb:Ljava/lang/StringBuilder;
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_3

    .line 268
    sget-object v2, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->state:Lcom/android/internal/telephony/MmiCode$State;

    .line 269
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v2, v2, Lcom/android/internal/telephony/CommandException;

    if-eqz v2, :cond_2

    .line 270
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v2, Lcom/android/internal/telephony/CommandException;

    check-cast v2, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v0

    .line 271
    .local v0, err:Lcom/android/internal/telephony/CommandException$Error;
    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v0, v2, :cond_1

    .line 272
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->isPukCommand()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 273
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->context:Landroid/content/Context;

    const v3, 0x10400c1

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 297
    .end local v0           #err:Lcom/android/internal/telephony/CommandException$Error;
    :goto_0
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->message:Ljava/lang/CharSequence;

    .line 298
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v2, p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->onMMIDone(Lcom/android/internal/telephony/cdma/CdmaMmiCode;)V

    .line 299
    return-void

    .line 276
    .restart local v0       #err:Lcom/android/internal/telephony/CommandException$Error;
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->context:Landroid/content/Context;

    const v3, 0x10400be

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 280
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->context:Landroid/content/Context;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 284
    .end local v0           #err:Lcom/android/internal/telephony/CommandException$Error;
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->context:Landroid/content/Context;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 287
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->isRegister()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 288
    sget-object v2, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->state:Lcom/android/internal/telephony/MmiCode$State;

    .line 289
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->context:Landroid/content/Context;

    const v3, 0x10400bc

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 292
    :cond_4
    sget-object v2, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->state:Lcom/android/internal/telephony/MmiCode$State;

    .line 293
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->context:Landroid/content/Context;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->state:Lcom/android/internal/telephony/MmiCode$State;

    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->state:Lcom/android/internal/telephony/MmiCode$State;

    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    if-ne v0, v1, :cond_1

    .line 169
    :cond_0
    :goto_0
    return-void

    .line 167
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/MmiCode$State;->CANCELLED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->state:Lcom/android/internal/telephony/MmiCode$State;

    .line 168
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->onMMIDone(Lcom/android/internal/telephony/cdma/CdmaMmiCode;)V

    goto :goto_0
.end method

.method public getMessage()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->message:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getState()Lcom/android/internal/telephony/MmiCode$State;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->state:Lcom/android/internal/telephony/MmiCode$State;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 243
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 244
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    move-object v0, v2

    check-cast v0, Landroid/os/AsyncResult;

    move-object v1, v0

    .line 245
    .local v1, ar:Landroid/os/AsyncResult;
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->onSetComplete(Landroid/os/AsyncResult;)V

    .line 249
    .end local v1           #ar:Landroid/os/AsyncResult;
    :goto_0
    return-void

    .line 247
    :cond_0
    const-string v2, "CDMA_MMI"

    const-string v3, "Unexpected reply"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isCancelable()Z
    .locals 1

    .prologue
    .line 172
    const/4 v0, 0x0

    return v0
.end method

.method isPukCommand()Z
    .locals 2

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->sc:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->sc:Ljava/lang/String;

    const-string v1, "05"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isRegister()Z
    .locals 2

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->action:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->action:Ljava/lang/String;

    const-string v1, "**"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUssdRequest()Z
    .locals 2

    .prologue
    .line 189
    const-string v0, "CDMA_MMI"

    const-string v1, "isUssdRequest is not implemented in CdmaMmiCode"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    const/4 v0, 0x0

    return v0
.end method

.method processCode()V
    .locals 6

    .prologue
    const-string v4, "Invalid or Unsupported MMI Code"

    .line 197
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->isPukCommand()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 201
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->sia:Ljava/lang/String;

    .line 202
    .local v2, oldPinOrPuk:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->sib:Ljava/lang/String;

    .line 203
    .local v1, newPin:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    .line 204
    .local v3, pinLen:I
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->isRegister()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 205
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->sic:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 207
    const v4, 0x10400c2

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->handlePasswordError(I)V

    .line 228
    .end local v1           #newPin:Ljava/lang/String;
    .end local v2           #oldPinOrPuk:Ljava/lang/String;
    .end local v3           #pinLen:I
    :cond_0
    :goto_0
    return-void

    .line 208
    .restart local v1       #newPin:Ljava/lang/String;
    .restart local v2       #oldPinOrPuk:Ljava/lang/String;
    .restart local v3       #pinLen:I
    :cond_1
    const/4 v4, 0x4

    if-lt v3, v4, :cond_2

    const/16 v4, 0x8

    if-le v3, v4, :cond_3

    .line 210
    :cond_2
    const v4, 0x10400c3

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->handlePasswordError(I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 223
    .end local v1           #newPin:Ljava/lang/String;
    .end local v2           #oldPinOrPuk:Ljava/lang/String;
    .end local v3           #pinLen:I
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 224
    .local v0, exc:Ljava/lang/RuntimeException;
    sget-object v4, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->state:Lcom/android/internal/telephony/MmiCode$State;

    .line 225
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->context:Landroid/content/Context;

    const v5, 0x10400b7

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->message:Ljava/lang/CharSequence;

    .line 226
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v4, p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->onMMIDone(Lcom/android/internal/telephony/cdma/CdmaMmiCode;)V

    goto :goto_0

    .line 212
    .end local v0           #exc:Ljava/lang/RuntimeException;
    .restart local v1       #newPin:Ljava/lang/String;
    .restart local v2       #oldPinOrPuk:Ljava/lang/String;
    .restart local v3       #pinLen:I
    :cond_3
    :try_start_1
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mUiccApp:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v4, :cond_0

    .line 213
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->mUiccApp:Lcom/android/internal/telephony/UiccCardApplication;

    const/4 v5, 0x1

    invoke-virtual {p0, v5, p0}, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v2, v1, v5}, Lcom/android/internal/telephony/UiccCardApplication;->supplyPuk(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    .line 218
    :cond_4
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Invalid or Unsupported MMI Code"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 221
    .end local v1           #newPin:Ljava/lang/String;
    .end local v2           #oldPinOrPuk:Ljava/lang/String;
    .end local v3           #pinLen:I
    :cond_5
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Invalid or Unsupported MMI Code"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
.end method
