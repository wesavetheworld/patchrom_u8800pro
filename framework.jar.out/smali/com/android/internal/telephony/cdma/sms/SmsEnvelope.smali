.class public final Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;
.super Ljava/lang/Object;
.source "SmsEnvelope.java"


# static fields
.field public static final EMERGENCY_MESSAGE_ID_END:I = 0x1004

.field public static final EMERGENCY_MESSAGE_ID_START:I = 0x1000

.field public static final MESSAGE_TYPE_ACKNOWLEDGE:I = 0x2

.field public static final MESSAGE_TYPE_BROADCAST:I = 0x1

.field public static final MESSAGE_TYPE_POINT_TO_POINT:I = 0x0

.field public static final SERVICECATEGORY_CMAS_AMBER:I = 0x1003

.field public static final SERVICECATEGORY_CMAS_EXTREME_THREAT:I = 0x1001

.field public static final SERVICECATEGORY_CMAS_PRESIDENTIAL:I = 0x1000

.field public static final SERVICECATEGORY_CMAS_RESERVED:I = 0x10ff

.field public static final SERVICECATEGORY_CMAS_SEVERE_THREAT:I = 0x1002

.field public static final SERVICECATEGORY_CMAS_TESTMESSAGE:I = 0x1004

.field public static final SMS_BEARER_DATA_MAX:I = 0xff

.field public static final TELESERVICE_CDMA_CBS:I = 0x50000

.field public static final TELESERVICE_CT_MMS_NOTIFICATION:I = 0xfdea

.field public static final TELESERVICE_MWI:I = 0x40000

.field public static final TELESERVICE_NOT_SET:I = 0x0

.field public static final TELESERVICE_VMN:I = 0x1003

.field public static final TELESERVICE_WAP:I = 0x1004

.field public static final TELESERVICE_WEMT:I = 0x1005

.field public static final TELESERVICE_WMT:I = 0x1002


# instance fields
.field public bearerData:[B

.field public bearerReply:I

.field public causeCode:B

.field public destAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

.field public errorClass:B

.field public messageType:I

.field public origAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

.field public origSubaddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;

.field public replySeqNo:B

.field public serviceCategory:I

.field public teleService:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    .line 150
    return-void
.end method


# virtual methods
.method public isCmas()Z
    .locals 2

    .prologue
    .line 153
    iget v0, p0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    const/16 v1, 0x1000

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    const/16 v1, 0x1004

    if-gt v0, v1, :cond_0

    .line 155
    const/4 v0, 0x1

    .line 157
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
