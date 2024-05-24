.class public final Lcom/android/dx/ssa/SsaBasicBlock$LabelComparator;
.super Ljava/lang/Object;
.source "SsaBasicBlock.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dx/ssa/SsaBasicBlock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LabelComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/dx/ssa/SsaBasicBlock;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 994
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/dx/ssa/SsaBasicBlock;Lcom/android/dx/ssa/SsaBasicBlock;)I
    .locals 3
    .param p1, "b1"    # Lcom/android/dx/ssa/SsaBasicBlock;
    .param p2, "b2"    # Lcom/android/dx/ssa/SsaBasicBlock;

    .line 999
    invoke-static {p1}, Lcom/android/dx/ssa/SsaBasicBlock;->access$000(Lcom/android/dx/ssa/SsaBasicBlock;)I

    move-result v0

    .line 1000
    .local v0, "label1":I
    invoke-static {p2}, Lcom/android/dx/ssa/SsaBasicBlock;->access$000(Lcom/android/dx/ssa/SsaBasicBlock;)I

    move-result v1

    .line 1002
    .local v1, "label2":I
    if-ge v0, v1, :cond_0

    .line 1003
    const/4 v2, -0x1

    return v2

    .line 1004
    :cond_0
    if-le v0, v1, :cond_1

    .line 1005
    const/4 v2, 0x1

    return v2

    .line 1007
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 994
    check-cast p1, Lcom/android/dx/ssa/SsaBasicBlock;

    check-cast p2, Lcom/android/dx/ssa/SsaBasicBlock;

    invoke-virtual {p0, p1, p2}, Lcom/android/dx/ssa/SsaBasicBlock$LabelComparator;->compare(Lcom/android/dx/ssa/SsaBasicBlock;Lcom/android/dx/ssa/SsaBasicBlock;)I

    move-result p1

    return p1
.end method
