.class final Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry$Helper;
.super Ljava/lang/Object;
.source "MapMakerInternalMap.java"

# interfaces
.implements Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntryHelper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry;
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
        "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry<",
        "TK;>;",
        "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueSegment<",
        "TK;>;>;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry$Helper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry$Helper<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 596
    new-instance v0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry$Helper;

    invoke-direct {v0}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry$Helper;-><init>()V

    sput-object v0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry$Helper;->INSTANCE:Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry$Helper;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 593
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry$Helper;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry$Helper<TK;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static instance()Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry$Helper;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry$Helper<",
            "TK;>;"
        }
    .end annotation

    .line 600
    sget-object v0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry$Helper;->INSTANCE:Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry$Helper;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic copy(Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;)Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;
    .locals 0

    .line 593
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry$Helper;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry$Helper<TK;>;"
    check-cast p1, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueSegment;

    check-cast p2, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry;

    check-cast p3, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry$Helper;->copy(Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueSegment;Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry;Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry;)Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry;

    move-result-object p1

    return-object p1
.end method

.method public copy(Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueSegment;Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry;Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry;)Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueSegment<",
            "TK;>;",
            "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry<",
            "TK;>;",
            "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry<",
            "TK;>;)",
            "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry<",
            "TK;>;"
        }
    .end annotation

    .line 627
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry$Helper;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry$Helper<TK;>;"
    .local p1, "segment":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueSegment;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueSegment<TK;>;"
    .local p2, "entry":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry<TK;>;"
    .local p3, "newNext":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry<TK;>;"
    invoke-virtual {p2, p3}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry;->copy(Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry;)Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry;

    move-result-object v0

    return-object v0
.end method

.method public keyStrength()Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Strength;
    .locals 1

    .line 605
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry$Helper;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry$Helper<TK;>;"
    sget-object v0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Strength;->STRONG:Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Strength;

    return-object v0
.end method

.method public bridge synthetic newEntry(Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;Ljava/lang/Object;ILorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;)Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;
    .locals 0

    .line 593
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry$Helper;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry$Helper<TK;>;"
    check-cast p1, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueSegment;

    check-cast p4, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry$Helper;->newEntry(Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueSegment;Ljava/lang/Object;ILorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry;)Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry;

    move-result-object p1

    return-object p1
.end method

.method public newEntry(Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueSegment;Ljava/lang/Object;ILorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry;)Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry;
    .locals 1
    .param p3, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueSegment<",
            "TK;>;TK;I",
            "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry<",
            "TK;>;)",
            "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry<",
            "TK;>;"
        }
    .end annotation

    .line 640
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry$Helper;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry$Helper<TK;>;"
    .local p1, "segment":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueSegment;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueSegment<TK;>;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local p4, "next":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry<TK;>;"
    new-instance v0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry;

    invoke-direct {v0, p2, p3, p4}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry;-><init>(Ljava/lang/Object;ILorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry;)V

    return-object v0
.end method

.method public bridge synthetic newSegment(Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;II)Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;
    .locals 0

    .line 593
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry$Helper;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry$Helper<TK;>;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry$Helper;->newSegment(Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;II)Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueSegment;

    move-result-object p1

    return-object p1
.end method

.method public newSegment(Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;II)Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueSegment;
    .locals 1
    .param p2, "initialCapacity"    # I
    .param p3, "maxSegmentSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap<",
            "TK;",
            "Lorg/checkerframework/com/google/common/collect/MapMaker$Dummy;",
            "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry<",
            "TK;>;",
            "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueSegment<",
            "TK;>;>;II)",
            "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueSegment<",
            "TK;>;"
        }
    .end annotation

    .line 619
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry$Helper;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry$Helper<TK;>;"
    .local p1, "map":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap<TK;Lorg/checkerframework/com/google/common/collect/MapMaker$Dummy;Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry<TK;>;Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueSegment<TK;>;>;"
    new-instance v0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueSegment;

    invoke-direct {v0, p1, p2, p3}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueSegment;-><init>(Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;II)V

    return-object v0
.end method

.method public bridge synthetic setValue(Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;Ljava/lang/Object;)V
    .locals 0

    .line 593
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry$Helper;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry$Helper<TK;>;"
    check-cast p1, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueSegment;

    check-cast p2, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry;

    check-cast p3, Lorg/checkerframework/com/google/common/collect/MapMaker$Dummy;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry$Helper;->setValue(Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueSegment;Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry;Lorg/checkerframework/com/google/common/collect/MapMaker$Dummy;)V

    return-void
.end method

.method public setValue(Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueSegment;Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry;Lorg/checkerframework/com/google/common/collect/MapMaker$Dummy;)V
    .locals 0
    .param p3, "value"    # Lorg/checkerframework/com/google/common/collect/MapMaker$Dummy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueSegment<",
            "TK;>;",
            "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry<",
            "TK;>;",
            "Lorg/checkerframework/com/google/common/collect/MapMaker$Dummy;",
            ")V"
        }
    .end annotation

    .line 632
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry$Helper;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry$Helper<TK;>;"
    .local p1, "segment":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueSegment;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueSegment<TK;>;"
    .local p2, "entry":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry<TK;>;"
    return-void
.end method

.method public valueStrength()Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Strength;
    .locals 1

    .line 610
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry$Helper;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry$Helper<TK;>;"
    sget-object v0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Strength;->STRONG:Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Strength;

    return-object v0
.end method
