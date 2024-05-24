.class final Lorg/checkerframework/org/apache/commons/text/StrLookup$ResourceBundleLookup;
.super Lorg/checkerframework/org/apache/commons/text/StrLookup;
.source "StrLookup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/org/apache/commons/text/StrLookup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ResourceBundleLookup"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/org/apache/commons/text/StrLookup<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final resourceBundle:Ljava/util/ResourceBundle;


# direct methods
.method private constructor <init>(Ljava/util/ResourceBundle;)V
    .locals 0
    .param p1, "resourceBundle"    # Ljava/util/ResourceBundle;

    .line 173
    invoke-direct {p0}, Lorg/checkerframework/org/apache/commons/text/StrLookup;-><init>()V

    .line 174
    iput-object p1, p0, Lorg/checkerframework/org/apache/commons/text/StrLookup$ResourceBundleLookup;->resourceBundle:Ljava/util/ResourceBundle;

    .line 175
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/ResourceBundle;Lorg/checkerframework/org/apache/commons/text/StrLookup$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/util/ResourceBundle;
    .param p2, "x1"    # Lorg/checkerframework/org/apache/commons/text/StrLookup$1;

    .line 163
    invoke-direct {p0, p1}, Lorg/checkerframework/org/apache/commons/text/StrLookup$ResourceBundleLookup;-><init>(Ljava/util/ResourceBundle;)V

    return-void
.end method


# virtual methods
.method public lookup(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 179
    iget-object v0, p0, Lorg/checkerframework/org/apache/commons/text/StrLookup$ResourceBundleLookup;->resourceBundle:Ljava/util/ResourceBundle;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {v0, p1}, Ljava/util/ResourceBundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 182
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/org/apache/commons/text/StrLookup$ResourceBundleLookup;->resourceBundle:Ljava/util/ResourceBundle;

    invoke-virtual {v0, p1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 180
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " [resourceBundle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/org/apache/commons/text/StrLookup$ResourceBundleLookup;->resourceBundle:Ljava/util/ResourceBundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
