.class Lorg/jsoup/helper/DataUtil$BomCharset;
.super Ljava/lang/Object;
.source "DataUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/helper/DataUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BomCharset"
.end annotation


# instance fields
.field private final charset:Ljava/lang/String;

.field private final offset:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "charset"    # Ljava/lang/String;
    .param p2, "offset"    # Z

    .line 271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 272
    iput-object p1, p0, Lorg/jsoup/helper/DataUtil$BomCharset;->charset:Ljava/lang/String;

    .line 273
    iput-boolean p2, p0, Lorg/jsoup/helper/DataUtil$BomCharset;->offset:Z

    .line 274
    return-void
.end method

.method static synthetic access$000(Lorg/jsoup/helper/DataUtil$BomCharset;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/jsoup/helper/DataUtil$BomCharset;

    .line 267
    iget-object v0, p0, Lorg/jsoup/helper/DataUtil$BomCharset;->charset:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lorg/jsoup/helper/DataUtil$BomCharset;)Z
    .locals 1
    .param p0, "x0"    # Lorg/jsoup/helper/DataUtil$BomCharset;

    .line 267
    iget-boolean v0, p0, Lorg/jsoup/helper/DataUtil$BomCharset;->offset:Z

    return v0
.end method
