.class final Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8$CACHE_HOLDER$1;
.super Ljava/util/LinkedHashMap;
.source "ConstantUtf8.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8$CACHE_HOLDER;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap<",
        "Ljava/lang/String;",
        "Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x760ed903b8db8f76L


# direct methods
.method constructor <init>(IFZ)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # F
    .param p3, "x2"    # Z

    .line 60
    invoke-direct {p0, p1, p2, p3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    return-void
.end method


# virtual methods
.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;",
            ">;)Z"
        }
    .end annotation

    .line 65
    .local p1, "eldest":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;>;"
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8$CACHE_HOLDER$1;->size()I

    move-result v0

    const/16 v1, 0x4e20

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
