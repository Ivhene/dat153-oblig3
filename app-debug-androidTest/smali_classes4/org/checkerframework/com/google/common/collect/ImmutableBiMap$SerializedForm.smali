.class Lorg/checkerframework/com/google/common/collect/ImmutableBiMap$SerializedForm;
.super Lorg/checkerframework/com/google/common/collect/ImmutableMap$SerializedForm;
.source "ImmutableBiMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/collect/ImmutableBiMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SerializedForm"
.end annotation


# static fields
.field private static final serialVersionUID:J


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/collect/ImmutableBiMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/ImmutableBiMap<",
            "**>;)V"
        }
    .end annotation

    .line 418
    .local p1, "bimap":Lorg/checkerframework/com/google/common/collect/ImmutableBiMap;, "Lorg/checkerframework/com/google/common/collect/ImmutableBiMap<**>;"
    invoke-direct {p0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableMap$SerializedForm;-><init>(Lorg/checkerframework/com/google/common/collect/ImmutableMap;)V

    .line 419
    return-void
.end method


# virtual methods
.method readResolve()Ljava/lang/Object;
    .locals 2

    .line 423
    new-instance v0, Lorg/checkerframework/com/google/common/collect/ImmutableBiMap$Builder;

    invoke-direct {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableBiMap$Builder;-><init>()V

    .line 424
    .local v0, "builder":Lorg/checkerframework/com/google/common/collect/ImmutableBiMap$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableBiMap$Builder<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-virtual {p0, v0}, Lorg/checkerframework/com/google/common/collect/ImmutableBiMap$SerializedForm;->createMap(Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method
