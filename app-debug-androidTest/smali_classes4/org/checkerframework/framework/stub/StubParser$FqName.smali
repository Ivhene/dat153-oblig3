.class Lorg/checkerframework/framework/stub/StubParser$FqName;
.super Ljava/lang/Object;
.source "StubParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/framework/stub/StubParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FqName"
.end annotation


# instance fields
.field public className:Ljava/lang/String;

.field public packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .line 2060
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2061
    iput-object p1, p0, Lorg/checkerframework/framework/stub/StubParser$FqName;->packageName:Ljava/lang/String;

    .line 2062
    iput-object p2, p0, Lorg/checkerframework/framework/stub/StubParser$FqName;->className:Ljava/lang/String;

    .line 2063
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 2068
    iget-object v0, p0, Lorg/checkerframework/framework/stub/StubParser$FqName;->packageName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2069
    iget-object v0, p0, Lorg/checkerframework/framework/stub/StubParser$FqName;->className:Ljava/lang/String;

    return-object v0

    .line 2071
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/checkerframework/framework/stub/StubParser$FqName;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/framework/stub/StubParser$FqName;->className:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
