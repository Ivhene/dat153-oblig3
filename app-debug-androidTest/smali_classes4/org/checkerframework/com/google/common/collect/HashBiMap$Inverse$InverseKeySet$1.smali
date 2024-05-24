.class Lorg/checkerframework/com/google/common/collect/HashBiMap$Inverse$InverseKeySet$1;
.super Lorg/checkerframework/com/google/common/collect/HashBiMap$Itr;
.source "HashBiMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/checkerframework/com/google/common/collect/HashBiMap$Inverse$InverseKeySet;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/com/google/common/collect/HashBiMap<",
        "TK;TV;>.Itr<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lorg/checkerframework/com/google/common/collect/HashBiMap$Inverse$InverseKeySet;


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/collect/HashBiMap$Inverse$InverseKeySet;)V
    .locals 1
    .param p1, "this$2"    # Lorg/checkerframework/com/google/common/collect/HashBiMap$Inverse$InverseKeySet;

    .line 652
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/HashBiMap$Inverse$InverseKeySet$1;, "Lorg/checkerframework/com/google/common/collect/HashBiMap$Inverse$InverseKeySet$1;"
    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/HashBiMap$Inverse$InverseKeySet$1;->this$2:Lorg/checkerframework/com/google/common/collect/HashBiMap$Inverse$InverseKeySet;

    iget-object v0, p1, Lorg/checkerframework/com/google/common/collect/HashBiMap$Inverse$InverseKeySet;->this$1:Lorg/checkerframework/com/google/common/collect/HashBiMap$Inverse;

    iget-object v0, v0, Lorg/checkerframework/com/google/common/collect/HashBiMap$Inverse;->this$0:Lorg/checkerframework/com/google/common/collect/HashBiMap;

    invoke-direct {p0, v0}, Lorg/checkerframework/com/google/common/collect/HashBiMap$Itr;-><init>(Lorg/checkerframework/com/google/common/collect/HashBiMap;)V

    return-void
.end method


# virtual methods
.method output(Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry<",
            "TK;TV;>;)TV;"
        }
    .end annotation

    .line 655
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/HashBiMap$Inverse$InverseKeySet$1;, "Lorg/checkerframework/com/google/common/collect/HashBiMap$Inverse$InverseKeySet$1;"
    .local p1, "entry":Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;, "Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry<TK;TV;>;"
    iget-object v0, p1, Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;->value:Ljava/lang/Object;

    return-object v0
.end method
