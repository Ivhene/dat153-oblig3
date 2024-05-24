.class Lorg/checkerframework/com/google/common/collect/HashBiMap$KeySet$1;
.super Lorg/checkerframework/com/google/common/collect/HashBiMap$Itr;
.source "HashBiMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/checkerframework/com/google/common/collect/HashBiMap$KeySet;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/com/google/common/collect/HashBiMap<",
        "TK;TV;>.Itr<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lorg/checkerframework/com/google/common/collect/HashBiMap$KeySet;


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/collect/HashBiMap$KeySet;)V
    .locals 1
    .param p1, "this$1"    # Lorg/checkerframework/com/google/common/collect/HashBiMap$KeySet;

    .line 466
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/HashBiMap$KeySet$1;, "Lorg/checkerframework/com/google/common/collect/HashBiMap$KeySet$1;"
    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/HashBiMap$KeySet$1;->this$1:Lorg/checkerframework/com/google/common/collect/HashBiMap$KeySet;

    iget-object v0, p1, Lorg/checkerframework/com/google/common/collect/HashBiMap$KeySet;->this$0:Lorg/checkerframework/com/google/common/collect/HashBiMap;

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
            "TK;TV;>;)TK;"
        }
    .end annotation

    .line 469
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/HashBiMap$KeySet$1;, "Lorg/checkerframework/com/google/common/collect/HashBiMap$KeySet$1;"
    .local p1, "entry":Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;, "Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry<TK;TV;>;"
    iget-object v0, p1, Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;->key:Ljava/lang/Object;

    return-object v0
.end method
