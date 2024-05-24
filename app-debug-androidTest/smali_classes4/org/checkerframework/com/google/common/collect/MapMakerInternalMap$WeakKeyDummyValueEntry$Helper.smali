.class final Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry$Helper;
.super Ljava/lang/Object;
.source "MapMakerInternalMap.java"

# interfaces
.implements Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntryHelper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Helper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntryHelper<",
        "TK;",
        "Lorg/checkerframework/com/google/common/collect/MapMaker$Dummy;",
        "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry<",
        "TK;>;",
        "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment<",
        "TK;>;>;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry$Helper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry$Helper<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 701
    new-instance v0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry$Helper;

    invoke-direct {v0}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry$Helper;-><init>()V

    sput-object v0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry$Helper;->INSTANCE:Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry$Helper;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 698
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry$Helper;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry$Helper<TK;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static instance()Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry$Helper;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry$Helper<",
            "TK;>;"
        }
    .end annotation

    .line 705
    sget-object v0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry$Helper;->INSTANCE:Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry$Helper;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic copy(Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;)Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;
    .locals 0

    .line 698
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry$Helper;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry$Helper<TK;>;"
    check-cast p1, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment;

    check-cast p2, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry;

    check-cast p3, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry$Helper;->copy(Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment;Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry;Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry;)Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry;

    move-result-object p1

    return-object p1
.end method

.method public copy(Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment;Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry;Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry;)Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment<",
            "TK;>;",
            "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry<",
            "TK;>;",
            "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry<",
            "TK;>;)",
            "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry<",
            "TK;>;"
        }
    .end annotation

    .line 731
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry$Helper;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry$Helper<TK;>;"
    .local p1, "segment":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment<TK;>;"
    .local p2, "entry":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry<TK;>;"
    .local p3, "newNext":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry<TK;>;"
    invoke-virtual {p2}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 733
    const/4 v0, 0x0

    return-object v0

    .line 735
    :cond_0
    invoke-static {p1}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment;->access$200(Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment;)Ljava/lang/ref/ReferenceQueue;

    move-result-object v0

    invoke-virtual {p2, v0, p3}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry;->copy(Ljava/lang/ref/ReferenceQueue;Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry;)Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry;

    move-result-object v0

    return-object v0
.end method

.method public keyStrength()Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Strength;
    .locals 1

    .line 710
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry$Helper;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry$Helper<TK;>;"
    sget-object v0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Strength;->WEAK:Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Strength;

    return-object v0
.end method

.method public bridge synthetic newEntry(Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;Ljava/lang/Object;ILorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;)Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;
    .locals 0

    .line 698
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry$Helper;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry$Helper<TK;>;"
    check-cast p1, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment;

    check-cast p4, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry$Helper;->newEntry(Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment;Ljava/lang/Object;ILorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry;)Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry;

    move-result-object p1

    return-object p1
.end method

.method public newEntry(Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment;Ljava/lang/Object;ILorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry;)Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry;
    .locals 2
    .param p3, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment<",
            "TK;>;TK;I",
            "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry<",
            "TK;>;)",
            "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry<",
            "TK;>;"
        }
    .end annotation

    .line 748
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry$Helper;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry$Helper<TK;>;"
    .local p1, "segment":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment<TK;>;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local p4, "next":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry<TK;>;"
    new-instance v0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry;

    invoke-static {p1}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment;->access$200(Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment;)Ljava/lang/ref/ReferenceQueue;

    move-result-object v1

    invoke-direct {v0, v1, p2, p3, p4}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry;)V

    return-object v0
.end method

.method public bridge synthetic newSegment(Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;II)Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;
    .locals 0

    .line 698
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry$Helper;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry$Helper<TK;>;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry$Helper;->newSegment(Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;II)Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment;

    move-result-object p1

    return-object p1
.end method

.method public newSegment(Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;II)Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment;
    .locals 1
    .param p2, "initialCapacity"    # I
    .param p3, "maxSegmentSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap<",
            "TK;",
            "Lorg/checkerframework/com/google/common/collect/MapMaker$Dummy;",
            "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry<",
            "TK;>;",
            "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment<",
            "TK;>;>;II)",
            "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment<",
            "TK;>;"
        }
    .end annotation

    .line 723
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry$Helper;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry$Helper<TK;>;"
    .local p1, "map":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap<TK;Lorg/checkerframework/com/google/common/collect/MapMaker$Dummy;Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry<TK;>;Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment<TK;>;>;"
    new-instance v0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment;

    invoke-direct {v0, p1, p2, p3}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment;-><init>(Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;II)V

    return-object v0
.end method

.method public bridge synthetic setValue(Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;Ljava/lang/Object;)V
    .locals 0

    .line 698
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry$Helper;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry$Helper<TK;>;"
    check-cast p1, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment;

    check-cast p2, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry;

    check-cast p3, Lorg/checkerframework/com/google/common/collect/MapMaker$Dummy;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry$Helper;->setValue(Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment;Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry;Lorg/checkerframework/com/google/common/collect/MapMaker$Dummy;)V

    return-void
.end method

.method public setValue(Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment;Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry;Lorg/checkerframework/com/google/common/collect/MapMaker$Dummy;)V
    .locals 0
    .param p3, "value"    # Lorg/checkerframework/com/google/common/collect/MapMaker$Dummy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment<",
            "TK;>;",
            "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry<",
            "TK;>;",
            "Lorg/checkerframework/com/google/common/collect/MapMaker$Dummy;",
            ")V"
        }
    .end annotation

    .line 740
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry$Helper;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry$Helper<TK;>;"
    .local p1, "segment":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment<TK;>;"
    .local p2, "entry":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry<TK;>;"
    return-void
.end method

.method public valueStrength()Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Strength;
    .locals 1

    .line 715
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry$Helper;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry$Helper<TK;>;"
    sget-object v0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Strength;->STRONG:Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Strength;

    return-object v0
.end method
