.class Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap$InverseSerializedForm;
.super Ljava/lang/Object;
.source "RegularImmutableBiMap.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InverseSerializedForm"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final forward:Lorg/checkerframework/com/google/common/collect/ImmutableBiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/collect/ImmutableBiMap<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/collect/ImmutableBiMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/ImmutableBiMap<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 293
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap$InverseSerializedForm;, "Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap$InverseSerializedForm<TK;TV;>;"
    .local p1, "forward":Lorg/checkerframework/com/google/common/collect/ImmutableBiMap;, "Lorg/checkerframework/com/google/common/collect/ImmutableBiMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 294
    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap$InverseSerializedForm;->forward:Lorg/checkerframework/com/google/common/collect/ImmutableBiMap;

    .line 295
    return-void
.end method


# virtual methods
.method readResolve()Ljava/lang/Object;
    .locals 1

    .line 298
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap$InverseSerializedForm;, "Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap$InverseSerializedForm<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap$InverseSerializedForm;->forward:Lorg/checkerframework/com/google/common/collect/ImmutableBiMap;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableBiMap;->inverse()Lorg/checkerframework/com/google/common/collect/ImmutableBiMap;

    move-result-object v0

    return-object v0
.end method
