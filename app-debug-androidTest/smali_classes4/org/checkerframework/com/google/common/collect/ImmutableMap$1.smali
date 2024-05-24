.class Lorg/checkerframework/com/google/common/collect/ImmutableMap$1;
.super Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator;
.source "ImmutableMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/checkerframework/com/google/common/collect/ImmutableMap;->keyIterator()Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator<",
        "TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/checkerframework/com/google/common/collect/ImmutableMap;

.field final synthetic val$entryIterator:Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator;


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/collect/ImmutableMap;Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator;)V
    .locals 0
    .param p1, "this$0"    # Lorg/checkerframework/com/google/common/collect/ImmutableMap;

    .line 742
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableMap$1;, "Lorg/checkerframework/com/google/common/collect/ImmutableMap$1;"
    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/ImmutableMap$1;->this$0:Lorg/checkerframework/com/google/common/collect/ImmutableMap;

    iput-object p2, p0, Lorg/checkerframework/com/google/common/collect/ImmutableMap$1;->val$entryIterator:Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator;

    invoke-direct {p0}, Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 745
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableMap$1;, "Lorg/checkerframework/com/google/common/collect/ImmutableMap$1;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableMap$1;->val$entryIterator:Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 750
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableMap$1;, "Lorg/checkerframework/com/google/common/collect/ImmutableMap$1;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableMap$1;->val$entryIterator:Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
