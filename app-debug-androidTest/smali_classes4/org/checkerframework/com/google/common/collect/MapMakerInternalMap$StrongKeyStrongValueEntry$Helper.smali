.class final Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry$Helper;
.super Ljava/lang/Object;
.source "MapMakerInternalMap.java"

# interfaces
.implements Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntryHelper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;
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
        "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry<",
        "TK;TV;>;",
        "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueSegment<",
        "TK;TV;>;>;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry$Helper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry$Helper<",
            "**>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 419
    new-instance v0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry$Helper;

    invoke-direct {v0}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry$Helper;-><init>()V

    sput-object v0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry$Helper;->INSTANCE:Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry$Helper;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 416
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry$Helper;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry$Helper<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static instance()Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry$Helper;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry$Helper<",
            "TK;TV;>;"
        }
    .end annotation

    .line 423
    sget-object v0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry$Helper;->INSTANCE:Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry$Helper;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic copy(Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;)Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;
    .locals 0

    .line 416
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry$Helper;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry$Helper<TK;TV;>;"
    check-cast p1, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueSegment;

    check-cast p2, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;

    check-cast p3, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry$Helper;->copy(Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueSegment;Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;)Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;

    move-result-object p1

    return-object p1
.end method

.method public copy(Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueSegment;Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;)Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueSegment<",
            "TK;TV;>;",
            "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry<",
            "TK;TV;>;",
            "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry<",
            "TK;TV;>;)",
            "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 451
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry$Helper;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry$Helper<TK;TV;>;"
    .local p1, "segment":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueSegment;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueSegment<TK;TV;>;"
    .local p2, "entry":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry<TK;TV;>;"
    .local p3, "newNext":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry<TK;TV;>;"
    invoke-virtual {p2, p3}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;->copy(Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;)Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;

    move-result-object v0

    return-object v0
.end method

.method public keyStrength()Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Strength;
    .locals 1

    .line 428
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry$Helper;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry$Helper<TK;TV;>;"
    sget-object v0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Strength;->STRONG:Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Strength;

    return-object v0
.end method

.method public bridge synthetic newEntry(Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;Ljava/lang/Object;ILorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;)Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;
    .locals 0

    .line 416
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry$Helper;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry$Helper<TK;TV;>;"
    check-cast p1, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueSegment;

    check-cast p4, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry$Helper;->newEntry(Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueSegment;Ljava/lang/Object;ILorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;)Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;

    move-result-object p1

    return-object p1
.end method

.method public newEntry(Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueSegment;Ljava/lang/Object;ILorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;)Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;
    .locals 1
    .param p3, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueSegment<",
            "TK;TV;>;TK;I",
            "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry<",
            "TK;TV;>;)",
            "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 468
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry$Helper;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry$Helper<TK;TV;>;"
    .local p1, "segment":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueSegment;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueSegment<TK;TV;>;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local p4, "next":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry<TK;TV;>;"
    new-instance v0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;

    invoke-direct {v0, p2, p3, p4}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;-><init>(Ljava/lang/Object;ILorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;)V

    return-object v0
.end method

.method public bridge synthetic newSegment(Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;II)Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;
    .locals 0

    .line 416
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry$Helper;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry$Helper<TK;TV;>;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry$Helper;->newSegment(Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;II)Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueSegment;

    move-result-object p1

    return-object p1
.end method

.method public newSegment(Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;II)Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueSegment;
    .locals 1
    .param p2, "initialCapacity"    # I
    .param p3, "maxSegmentSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap<",
            "TK;TV;",
            "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry<",
            "TK;TV;>;",
            "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueSegment<",
            "TK;TV;>;>;II)",
            "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueSegment<",
            "TK;TV;>;"
        }
    .end annotation

    .line 443
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry$Helper;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry$Helper<TK;TV;>;"
    .local p1, "map":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap<TK;TV;Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry<TK;TV;>;Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueSegment<TK;TV;>;>;"
    new-instance v0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueSegment;

    invoke-direct {v0, p1, p2, p3}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueSegment;-><init>(Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;II)V

    return-object v0
.end method

.method public bridge synthetic setValue(Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;Ljava/lang/Object;)V
    .locals 0

    .line 416
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry$Helper;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry$Helper<TK;TV;>;"
    check-cast p1, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueSegment;

    check-cast p2, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry$Helper;->setValue(Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueSegment;Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;Ljava/lang/Object;)V

    return-void
.end method

.method public setValue(Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueSegment;Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueSegment<",
            "TK;TV;>;",
            "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry<",
            "TK;TV;>;TV;)V"
        }
    .end annotation

    .line 459
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry$Helper;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry$Helper<TK;TV;>;"
    .local p1, "segment":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueSegment;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueSegment<TK;TV;>;"
    .local p2, "entry":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry<TK;TV;>;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    invoke-virtual {p2, p3}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;->setValue(Ljava/lang/Object;)V

    .line 460
    return-void
.end method

.method public valueStrength()Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Strength;
    .locals 1

    .line 433
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry$Helper;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry$Helper<TK;TV;>;"
    sget-object v0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Strength;->STRONG:Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Strength;

    return-object v0
.end method
