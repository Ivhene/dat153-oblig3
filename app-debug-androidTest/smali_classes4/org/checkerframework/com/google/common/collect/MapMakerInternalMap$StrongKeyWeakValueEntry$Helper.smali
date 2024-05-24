.class final Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry$Helper;
.super Ljava/lang/Object;
.source "MapMakerInternalMap.java"

# interfaces
.implements Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntryHelper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Helper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntryHelper<",
        "TK;TV;",
        "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry<",
        "TK;TV;>;",
        "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment<",
        "TK;TV;>;>;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry$Helper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry$Helper<",
            "**>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 516
    new-instance v0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry$Helper;

    invoke-direct {v0}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry$Helper;-><init>()V

    sput-object v0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry$Helper;->INSTANCE:Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry$Helper;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 513
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry$Helper;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry$Helper<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static instance()Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry$Helper;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry$Helper<",
            "TK;TV;>;"
        }
    .end annotation

    .line 520
    sget-object v0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry$Helper;->INSTANCE:Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry$Helper;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic copy(Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;)Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;
    .locals 0

    .line 513
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry$Helper;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry$Helper<TK;TV;>;"
    check-cast p1, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;

    check-cast p2, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;

    check-cast p3, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry$Helper;->copy(Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;)Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;

    move-result-object p1

    return-object p1
.end method

.method public copy(Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;)Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment<",
            "TK;TV;>;",
            "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry<",
            "TK;TV;>;",
            "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry<",
            "TK;TV;>;)",
            "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 547
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry$Helper;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry$Helper<TK;TV;>;"
    .local p1, "segment":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment<TK;TV;>;"
    .local p2, "entry":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry<TK;TV;>;"
    .local p3, "newNext":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry<TK;TV;>;"
    invoke-static {p2}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->isCollected(Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 548
    const/4 v0, 0x0

    return-object v0

    .line 550
    :cond_0
    invoke-static {p1}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;->access$100(Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;)Ljava/lang/ref/ReferenceQueue;

    move-result-object v0

    invoke-virtual {p2, v0, p3}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;->copy(Ljava/lang/ref/ReferenceQueue;Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;)Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;

    move-result-object v0

    return-object v0
.end method

.method public keyStrength()Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Strength;
    .locals 1

    .line 525
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry$Helper;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry$Helper<TK;TV;>;"
    sget-object v0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Strength;->STRONG:Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Strength;

    return-object v0
.end method

.method public bridge synthetic newEntry(Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;Ljava/lang/Object;ILorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;)Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;
    .locals 0

    .line 513
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry$Helper;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry$Helper<TK;TV;>;"
    check-cast p1, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;

    check-cast p4, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry$Helper;->newEntry(Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;Ljava/lang/Object;ILorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;)Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;

    move-result-object p1

    return-object p1
.end method

.method public newEntry(Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;Ljava/lang/Object;ILorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;)Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;
    .locals 1
    .param p3, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment<",
            "TK;TV;>;TK;I",
            "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry<",
            "TK;TV;>;)",
            "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 565
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry$Helper;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry$Helper<TK;TV;>;"
    .local p1, "segment":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment<TK;TV;>;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local p4, "next":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry<TK;TV;>;"
    new-instance v0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;

    invoke-direct {v0, p2, p3, p4}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;-><init>(Ljava/lang/Object;ILorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;)V

    return-object v0
.end method

.method public bridge synthetic newSegment(Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;II)Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;
    .locals 0

    .line 513
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry$Helper;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry$Helper<TK;TV;>;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry$Helper;->newSegment(Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;II)Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;

    move-result-object p1

    return-object p1
.end method

.method public newSegment(Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;II)Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;
    .locals 1
    .param p2, "initialCapacity"    # I
    .param p3, "maxSegmentSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap<",
            "TK;TV;",
            "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry<",
            "TK;TV;>;",
            "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment<",
            "TK;TV;>;>;II)",
            "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment<",
            "TK;TV;>;"
        }
    .end annotation

    .line 539
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry$Helper;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry$Helper<TK;TV;>;"
    .local p1, "map":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap<TK;TV;Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry<TK;TV;>;Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment<TK;TV;>;>;"
    new-instance v0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;

    invoke-direct {v0, p1, p2, p3}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;-><init>(Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;II)V

    return-object v0
.end method

.method public bridge synthetic setValue(Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;Ljava/lang/Object;)V
    .locals 0

    .line 513
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry$Helper;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry$Helper<TK;TV;>;"
    check-cast p1, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;

    check-cast p2, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry$Helper;->setValue(Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;Ljava/lang/Object;)V

    return-void
.end method

.method public setValue(Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment<",
            "TK;TV;>;",
            "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry<",
            "TK;TV;>;TV;)V"
        }
    .end annotation

    .line 556
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry$Helper;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry$Helper<TK;TV;>;"
    .local p1, "segment":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment<TK;TV;>;"
    .local p2, "entry":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry<TK;TV;>;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    invoke-static {p1}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;->access$100(Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;)Ljava/lang/ref/ReferenceQueue;

    move-result-object v0

    invoke-virtual {p2, p3, v0}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;->setValue(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 557
    return-void
.end method

.method public valueStrength()Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Strength;
    .locals 1

    .line 530
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry$Helper;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry$Helper<TK;TV;>;"
    sget-object v0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Strength;->WEAK:Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Strength;

    return-object v0
.end method
