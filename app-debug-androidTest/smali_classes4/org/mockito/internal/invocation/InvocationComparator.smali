.class public Lorg/mockito/internal/invocation/InvocationComparator;
.super Ljava/lang/Object;
.source "InvocationComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lorg/mockito/invocation/Invocation;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 14
    check-cast p1, Lorg/mockito/invocation/Invocation;

    check-cast p2, Lorg/mockito/invocation/Invocation;

    invoke-virtual {p0, p1, p2}, Lorg/mockito/internal/invocation/InvocationComparator;->compare(Lorg/mockito/invocation/Invocation;Lorg/mockito/invocation/Invocation;)I

    move-result p1

    return p1
.end method

.method public compare(Lorg/mockito/invocation/Invocation;Lorg/mockito/invocation/Invocation;)I
    .locals 2
    .param p1, "o1"    # Lorg/mockito/invocation/Invocation;
    .param p2, "o2"    # Lorg/mockito/invocation/Invocation;

    .line 17
    invoke-interface {p1}, Lorg/mockito/invocation/Invocation;->getSequenceNumber()I

    move-result v0

    invoke-interface {p2}, Lorg/mockito/invocation/Invocation;->getSequenceNumber()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    return v0
.end method
