.class final Landroid/pim/vcard/VCardParserImpl_V21$EmptyInterpreter;
.super Ljava/lang/Object;
.source "VCardParserImpl_V21.java"

# interfaces
.implements Landroid/pim/vcard/VCardInterpreter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/pim/vcard/VCardParserImpl_V21;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "EmptyInterpreter"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/pim/vcard/VCardParserImpl_V21$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/pim/vcard/VCardParserImpl_V21$EmptyInterpreter;-><init>()V

    return-void
.end method


# virtual methods
.method public end()V
    .locals 0

    .prologue
    .line 56
    return-void
.end method

.method public endEntry()V
    .locals 0

    .prologue
    .line 59
    return-void
.end method

.method public endProperty()V
    .locals 0

    .prologue
    .line 62
    return-void
.end method

.method public propertyGroup(Ljava/lang/String;)V
    .locals 0
    .parameter "group"

    .prologue
    .line 65
    return-void
.end method

.method public propertyName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 68
    return-void
.end method

.method public propertyParamType(Ljava/lang/String;)V
    .locals 0
    .parameter "type"

    .prologue
    .line 71
    return-void
.end method

.method public propertyParamValue(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 74
    return-void
.end method

.method public propertyValues(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 77
    .local p1, values:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method

.method public start()V
    .locals 0

    .prologue
    .line 80
    return-void
.end method

.method public startEntry()V
    .locals 0

    .prologue
    .line 83
    return-void
.end method

.method public startProperty()V
    .locals 0

    .prologue
    .line 86
    return-void
.end method
