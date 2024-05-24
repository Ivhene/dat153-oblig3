.class final Lorg/checkerframework/com/google/common/collect/CompactHashMap$MapEntry;
.super Lorg/checkerframework/com/google/common/collect/AbstractMapEntry;
.source "CompactHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/collect/CompactHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MapEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/com/google/common/collect/AbstractMapEntry<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private final key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private lastKnownIndex:I

.field final synthetic this$0:Lorg/checkerframework/com/google/common/collect/CompactHashMap;


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/collect/CompactHashMap;I)V
    .locals 1
    .param p1, "this$0"    # Lorg/checkerframework/com/google/common/collect/CompactHashMap;
    .param p2, "index"    # I

    .line 678
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/CompactHashMap$MapEntry;, "Lorg/checkerframework/com/google/common/collect/CompactHashMap<TK;TV;>.MapEntry;"
    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/CompactHashMap$MapEntry;->this$0:Lorg/checkerframework/com/google/common/collect/CompactHashMap;

    invoke-direct {p0}, Lorg/checkerframework/com/google/common/collect/AbstractMapEntry;-><init>()V

    .line 679
    iget-object v0, p1, Lorg/checkerframework/com/google/common/collect/CompactHashMap;->keys:[Ljava/lang/Object;

    aget-object v0, v0, p2

    iput-object v0, p0, Lorg/checkerframework/com/google/common/collect/CompactHashMap$MapEntry;->key:Ljava/lang/Object;

    .line 680
    iput p2, p0, Lorg/checkerframework/com/google/common/collect/CompactHashMap$MapEntry;->lastKnownIndex:I

    .line 681
    return-void
.end method

.method private updateLastKnownIndex()V
    .locals 3

    .line 689
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/CompactHashMap$MapEntry;, "Lorg/checkerframework/com/google/common/collect/CompactHashMap<TK;TV;>.MapEntry;"
    iget v0, p0, Lorg/checkerframework/com/google/common/collect/CompactHashMap$MapEntry;->lastKnownIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/CompactHashMap$MapEntry;->this$0:Lorg/checkerframework/com/google/common/collect/CompactHashMap;

    .line 690
    invoke-virtual {v1}, Lorg/checkerframework/com/google/common/collect/CompactHashMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/CompactHashMap$MapEntry;->key:Ljava/lang/Object;

    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/CompactHashMap$MapEntry;->this$0:Lorg/checkerframework/com/google/common/collect/CompactHashMap;

    iget-object v1, v1, Lorg/checkerframework/com/google/common/collect/CompactHashMap;->keys:[Ljava/lang/Object;

    iget v2, p0, Lorg/checkerframework/com/google/common/collect/CompactHashMap$MapEntry;->lastKnownIndex:I

    aget-object v1, v1, v2

    .line 691
    invoke-static {v0, v1}, Lorg/checkerframework/com/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 692
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/CompactHashMap$MapEntry;->this$0:Lorg/checkerframework/com/google/common/collect/CompactHashMap;

    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/CompactHashMap$MapEntry;->key:Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/checkerframework/com/google/common/collect/CompactHashMap;->access$200(Lorg/checkerframework/com/google/common/collect/CompactHashMap;Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lorg/checkerframework/com/google/common/collect/CompactHashMap$MapEntry;->lastKnownIndex:I

    .line 694
    :cond_1
    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 685
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/CompactHashMap$MapEntry;, "Lorg/checkerframework/com/google/common/collect/CompactHashMap<TK;TV;>.MapEntry;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/CompactHashMap$MapEntry;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 699
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/CompactHashMap$MapEntry;, "Lorg/checkerframework/com/google/common/collect/CompactHashMap<TK;TV;>.MapEntry;"
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/collect/CompactHashMap$MapEntry;->updateLastKnownIndex()V

    .line 700
    iget v0, p0, Lorg/checkerframework/com/google/common/collect/CompactHashMap$MapEntry;->lastKnownIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/CompactHashMap$MapEntry;->this$0:Lorg/checkerframework/com/google/common/collect/CompactHashMap;

    iget-object v0, v0, Lorg/checkerframework/com/google/common/collect/CompactHashMap;->values:[Ljava/lang/Object;

    iget v1, p0, Lorg/checkerframework/com/google/common/collect/CompactHashMap$MapEntry;->lastKnownIndex:I

    aget-object v0, v0, v1

    :goto_0
    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 706
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/CompactHashMap$MapEntry;, "Lorg/checkerframework/com/google/common/collect/CompactHashMap<TK;TV;>.MapEntry;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/collect/CompactHashMap$MapEntry;->updateLastKnownIndex()V

    .line 707
    iget v0, p0, Lorg/checkerframework/com/google/common/collect/CompactHashMap$MapEntry;->lastKnownIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 708
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/CompactHashMap$MapEntry;->this$0:Lorg/checkerframework/com/google/common/collect/CompactHashMap;

    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/CompactHashMap$MapEntry;->key:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lorg/checkerframework/com/google/common/collect/CompactHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 709
    const/4 v0, 0x0

    return-object v0

    .line 711
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/CompactHashMap$MapEntry;->this$0:Lorg/checkerframework/com/google/common/collect/CompactHashMap;

    iget-object v0, v0, Lorg/checkerframework/com/google/common/collect/CompactHashMap;->values:[Ljava/lang/Object;

    iget v1, p0, Lorg/checkerframework/com/google/common/collect/CompactHashMap$MapEntry;->lastKnownIndex:I

    aget-object v0, v0, v1

    .line 712
    .local v0, "old":Ljava/lang/Object;, "TV;"
    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/CompactHashMap$MapEntry;->this$0:Lorg/checkerframework/com/google/common/collect/CompactHashMap;

    iget-object v1, v1, Lorg/checkerframework/com/google/common/collect/CompactHashMap;->values:[Ljava/lang/Object;

    iget v2, p0, Lorg/checkerframework/com/google/common/collect/CompactHashMap$MapEntry;->lastKnownIndex:I

    aput-object p1, v1, v2

    .line 713
    return-object v0
.end method
