.class Lorg/checkerframework/com/google/common/collect/HashBiMap$Inverse$1$InverseEntry;
.super Lorg/checkerframework/com/google/common/collect/AbstractMapEntry;
.source "HashBiMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/collect/HashBiMap$Inverse$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InverseEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/com/google/common/collect/AbstractMapEntry<",
        "TV;TK;>;"
    }
.end annotation


# instance fields
.field delegate:Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field final synthetic this$2:Lorg/checkerframework/com/google/common/collect/HashBiMap$Inverse$1;


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/collect/HashBiMap$Inverse$1;Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;)V
    .locals 0
    .param p1, "this$2"    # Lorg/checkerframework/com/google/common/collect/HashBiMap$Inverse$1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 677
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/HashBiMap$Inverse$1$InverseEntry;, "Lorg/checkerframework/com/google/common/collect/HashBiMap$Inverse$1.InverseEntry;"
    .local p2, "entry":Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;, "Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry<TK;TV;>;"
    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/HashBiMap$Inverse$1$InverseEntry;->this$2:Lorg/checkerframework/com/google/common/collect/HashBiMap$Inverse$1;

    invoke-direct {p0}, Lorg/checkerframework/com/google/common/collect/AbstractMapEntry;-><init>()V

    .line 678
    iput-object p2, p0, Lorg/checkerframework/com/google/common/collect/HashBiMap$Inverse$1$InverseEntry;->delegate:Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;

    .line 679
    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 683
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/HashBiMap$Inverse$1$InverseEntry;, "Lorg/checkerframework/com/google/common/collect/HashBiMap$Inverse$1.InverseEntry;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/HashBiMap$Inverse$1$InverseEntry;->delegate:Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;

    iget-object v0, v0, Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 688
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/HashBiMap$Inverse$1$InverseEntry;, "Lorg/checkerframework/com/google/common/collect/HashBiMap$Inverse$1.InverseEntry;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/HashBiMap$Inverse$1$InverseEntry;->delegate:Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;

    iget-object v0, v0, Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .line 693
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/HashBiMap$Inverse$1$InverseEntry;, "Lorg/checkerframework/com/google/common/collect/HashBiMap$Inverse$1.InverseEntry;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/HashBiMap$Inverse$1$InverseEntry;->delegate:Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;

    iget-object v0, v0, Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;->key:Ljava/lang/Object;

    .line 694
    .local v0, "oldKey":Ljava/lang/Object;, "TK;"
    invoke-static {p1}, Lorg/checkerframework/com/google/common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result v1

    .line 695
    .local v1, "keyHash":I
    iget-object v2, p0, Lorg/checkerframework/com/google/common/collect/HashBiMap$Inverse$1$InverseEntry;->delegate:Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;

    iget v2, v2, Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;->keyHash:I

    if-ne v1, v2, :cond_0

    invoke-static {p1, v0}, Lorg/checkerframework/com/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 696
    return-object p1

    .line 698
    :cond_0
    iget-object v2, p0, Lorg/checkerframework/com/google/common/collect/HashBiMap$Inverse$1$InverseEntry;->this$2:Lorg/checkerframework/com/google/common/collect/HashBiMap$Inverse$1;

    iget-object v2, v2, Lorg/checkerframework/com/google/common/collect/HashBiMap$Inverse$1;->this$1:Lorg/checkerframework/com/google/common/collect/HashBiMap$Inverse;

    iget-object v2, v2, Lorg/checkerframework/com/google/common/collect/HashBiMap$Inverse;->this$0:Lorg/checkerframework/com/google/common/collect/HashBiMap;

    invoke-static {v2, p1, v1}, Lorg/checkerframework/com/google/common/collect/HashBiMap;->access$300(Lorg/checkerframework/com/google/common/collect/HashBiMap;Ljava/lang/Object;I)Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;

    move-result-object v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    const-string v3, "value already present: %s"

    invoke-static {v2, v3, p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 699
    iget-object v2, p0, Lorg/checkerframework/com/google/common/collect/HashBiMap$Inverse$1$InverseEntry;->this$2:Lorg/checkerframework/com/google/common/collect/HashBiMap$Inverse$1;

    iget-object v2, v2, Lorg/checkerframework/com/google/common/collect/HashBiMap$Inverse$1;->this$1:Lorg/checkerframework/com/google/common/collect/HashBiMap$Inverse;

    iget-object v2, v2, Lorg/checkerframework/com/google/common/collect/HashBiMap$Inverse;->this$0:Lorg/checkerframework/com/google/common/collect/HashBiMap;

    iget-object v3, p0, Lorg/checkerframework/com/google/common/collect/HashBiMap$Inverse$1$InverseEntry;->delegate:Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;

    invoke-static {v2, v3}, Lorg/checkerframework/com/google/common/collect/HashBiMap;->access$200(Lorg/checkerframework/com/google/common/collect/HashBiMap;Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;)V

    .line 700
    new-instance v2, Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;

    iget-object v3, p0, Lorg/checkerframework/com/google/common/collect/HashBiMap$Inverse$1$InverseEntry;->delegate:Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;

    iget-object v3, v3, Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;->value:Ljava/lang/Object;

    iget-object v4, p0, Lorg/checkerframework/com/google/common/collect/HashBiMap$Inverse$1$InverseEntry;->delegate:Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;

    iget v4, v4, Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;->valueHash:I

    invoke-direct {v2, p1, v1, v3, v4}, Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;-><init>(Ljava/lang/Object;ILjava/lang/Object;I)V

    .line 702
    .local v2, "newEntry":Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;, "Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry<TK;TV;>;"
    iput-object v2, p0, Lorg/checkerframework/com/google/common/collect/HashBiMap$Inverse$1$InverseEntry;->delegate:Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;

    .line 703
    iget-object v3, p0, Lorg/checkerframework/com/google/common/collect/HashBiMap$Inverse$1$InverseEntry;->this$2:Lorg/checkerframework/com/google/common/collect/HashBiMap$Inverse$1;

    iget-object v3, v3, Lorg/checkerframework/com/google/common/collect/HashBiMap$Inverse$1;->this$1:Lorg/checkerframework/com/google/common/collect/HashBiMap$Inverse;

    iget-object v3, v3, Lorg/checkerframework/com/google/common/collect/HashBiMap$Inverse;->this$0:Lorg/checkerframework/com/google/common/collect/HashBiMap;

    const/4 v4, 0x0

    invoke-static {v3, v2, v4}, Lorg/checkerframework/com/google/common/collect/HashBiMap;->access$500(Lorg/checkerframework/com/google/common/collect/HashBiMap;Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;Lorg/checkerframework/com/google/common/collect/HashBiMap$BiEntry;)V

    .line 704
    iget-object v3, p0, Lorg/checkerframework/com/google/common/collect/HashBiMap$Inverse$1$InverseEntry;->this$2:Lorg/checkerframework/com/google/common/collect/HashBiMap$Inverse$1;

    iget-object v4, v3, Lorg/checkerframework/com/google/common/collect/HashBiMap$Inverse$1;->this$1:Lorg/checkerframework/com/google/common/collect/HashBiMap$Inverse;

    iget-object v4, v4, Lorg/checkerframework/com/google/common/collect/HashBiMap$Inverse;->this$0:Lorg/checkerframework/com/google/common/collect/HashBiMap;

    invoke-static {v4}, Lorg/checkerframework/com/google/common/collect/HashBiMap;->access$100(Lorg/checkerframework/com/google/common/collect/HashBiMap;)I

    move-result v4

    iput v4, v3, Lorg/checkerframework/com/google/common/collect/HashBiMap$Inverse$1;->expectedModCount:I

    .line 705
    return-object v0
.end method
