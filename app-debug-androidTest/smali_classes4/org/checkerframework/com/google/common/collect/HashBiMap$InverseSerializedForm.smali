.class final Lorg/checkerframework/com/google/common/collect/HashBiMap$InverseSerializedForm;
.super Ljava/lang/Object;
.source "HashBiMap.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/collect/HashBiMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
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


# instance fields
.field private final bimap:Lorg/checkerframework/com/google/common/collect/HashBiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/collect/HashBiMap<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/collect/HashBiMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/HashBiMap<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 735
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/HashBiMap$InverseSerializedForm;, "Lorg/checkerframework/com/google/common/collect/HashBiMap$InverseSerializedForm<TK;TV;>;"
    .local p1, "bimap":Lorg/checkerframework/com/google/common/collect/HashBiMap;, "Lorg/checkerframework/com/google/common/collect/HashBiMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 736
    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/HashBiMap$InverseSerializedForm;->bimap:Lorg/checkerframework/com/google/common/collect/HashBiMap;

    .line 737
    return-void
.end method


# virtual methods
.method readResolve()Ljava/lang/Object;
    .locals 1

    .line 740
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/HashBiMap$InverseSerializedForm;, "Lorg/checkerframework/com/google/common/collect/HashBiMap$InverseSerializedForm<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/HashBiMap$InverseSerializedForm;->bimap:Lorg/checkerframework/com/google/common/collect/HashBiMap;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/HashBiMap;->inverse()Lorg/checkerframework/com/google/common/collect/BiMap;

    move-result-object v0

    return-object v0
.end method
