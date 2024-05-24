.class Lorg/checkerframework/framework/type/BoundsInitializer$BoundPath;
.super Ljava/util/LinkedList;
.source "BoundsInitializer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/framework/type/BoundsInitializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BoundPath"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedList<",
        "Lorg/checkerframework/framework/type/BoundsInitializer$BoundPathNode;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 911
    invoke-direct {p0}, Ljava/util/LinkedList;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/checkerframework/framework/type/BoundsInitializer$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/checkerframework/framework/type/BoundsInitializer$1;

    .line 911
    invoke-direct {p0}, Lorg/checkerframework/framework/type/BoundsInitializer$BoundPath;-><init>()V

    return-void
.end method


# virtual methods
.method public copy()Lorg/checkerframework/framework/type/BoundsInitializer$BoundPath;
    .locals 4

    .line 924
    new-instance v0, Lorg/checkerframework/framework/type/BoundsInitializer$BoundPath;

    invoke-direct {v0}, Lorg/checkerframework/framework/type/BoundsInitializer$BoundPath;-><init>()V

    .line 925
    .local v0, "copy":Lorg/checkerframework/framework/type/BoundsInitializer$BoundPath;
    invoke-virtual {p0}, Lorg/checkerframework/framework/type/BoundsInitializer$BoundPath;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/framework/type/BoundsInitializer$BoundPathNode;

    .line 926
    .local v2, "node":Lorg/checkerframework/framework/type/BoundsInitializer$BoundPathNode;
    invoke-virtual {v2}, Lorg/checkerframework/framework/type/BoundsInitializer$BoundPathNode;->copy()Lorg/checkerframework/framework/type/BoundsInitializer$BoundPathNode;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/checkerframework/framework/type/BoundsInitializer$BoundPath;->add(Ljava/lang/Object;)Z

    .line 927
    .end local v2    # "node":Lorg/checkerframework/framework/type/BoundsInitializer$BoundPathNode;
    goto :goto_0

    .line 929
    :cond_0
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .line 915
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 920
    const-string v0, ","

    invoke-static {v0, p0}, Lorg/checkerframework/javacutil/PluginUtil;->join(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
