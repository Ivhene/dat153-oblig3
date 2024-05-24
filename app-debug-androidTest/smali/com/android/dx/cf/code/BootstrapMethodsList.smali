.class public Lcom/android/dx/cf/code/BootstrapMethodsList;
.super Lcom/android/dx/util/FixedSizeList;
.source "BootstrapMethodsList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dx/cf/code/BootstrapMethodsList$Item;
    }
.end annotation


# static fields
.field public static final EMPTY:Lcom/android/dx/cf/code/BootstrapMethodsList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 28
    new-instance v0, Lcom/android/dx/cf/code/BootstrapMethodsList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/dx/cf/code/BootstrapMethodsList;-><init>(I)V

    sput-object v0, Lcom/android/dx/cf/code/BootstrapMethodsList;->EMPTY:Lcom/android/dx/cf/code/BootstrapMethodsList;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "count"    # I

    .line 36
    invoke-direct {p0, p1}, Lcom/android/dx/util/FixedSizeList;-><init>(I)V

    .line 37
    return-void
.end method

.method public static concat(Lcom/android/dx/cf/code/BootstrapMethodsList;Lcom/android/dx/cf/code/BootstrapMethodsList;)Lcom/android/dx/cf/code/BootstrapMethodsList;
    .locals 6
    .param p0, "list1"    # Lcom/android/dx/cf/code/BootstrapMethodsList;
    .param p1, "list2"    # Lcom/android/dx/cf/code/BootstrapMethodsList;

    .line 86
    sget-object v0, Lcom/android/dx/cf/code/BootstrapMethodsList;->EMPTY:Lcom/android/dx/cf/code/BootstrapMethodsList;

    if-ne p0, v0, :cond_0

    .line 87
    return-object p1

    .line 88
    :cond_0
    if-ne p1, v0, :cond_1

    .line 89
    return-object p0

    .line 92
    :cond_1
    invoke-virtual {p0}, Lcom/android/dx/cf/code/BootstrapMethodsList;->size()I

    move-result v0

    .line 93
    .local v0, "sz1":I
    invoke-virtual {p1}, Lcom/android/dx/cf/code/BootstrapMethodsList;->size()I

    move-result v1

    .line 94
    .local v1, "sz2":I
    new-instance v2, Lcom/android/dx/cf/code/BootstrapMethodsList;

    add-int v3, v0, v1

    invoke-direct {v2, v3}, Lcom/android/dx/cf/code/BootstrapMethodsList;-><init>(I)V

    .line 96
    .local v2, "result":Lcom/android/dx/cf/code/BootstrapMethodsList;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_2

    .line 97
    invoke-virtual {p0, v3}, Lcom/android/dx/cf/code/BootstrapMethodsList;->get(I)Lcom/android/dx/cf/code/BootstrapMethodsList$Item;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/dx/cf/code/BootstrapMethodsList;->set(ILcom/android/dx/cf/code/BootstrapMethodsList$Item;)V

    .line 96
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 100
    .end local v3    # "i":I
    :cond_2
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_1
    if-ge v3, v1, :cond_3

    .line 101
    add-int v4, v0, v3

    invoke-virtual {p1, v3}, Lcom/android/dx/cf/code/BootstrapMethodsList;->get(I)Lcom/android/dx/cf/code/BootstrapMethodsList$Item;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/android/dx/cf/code/BootstrapMethodsList;->set(ILcom/android/dx/cf/code/BootstrapMethodsList$Item;)V

    .line 100
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 104
    .end local v3    # "i":I
    :cond_3
    return-object v2
.end method


# virtual methods
.method public get(I)Lcom/android/dx/cf/code/BootstrapMethodsList$Item;
    .locals 1
    .param p1, "n"    # I

    .line 46
    invoke-virtual {p0, p1}, Lcom/android/dx/cf/code/BootstrapMethodsList;->get0(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dx/cf/code/BootstrapMethodsList$Item;

    return-object v0
.end method

.method public set(ILcom/android/dx/cf/code/BootstrapMethodsList$Item;)V
    .locals 2
    .param p1, "n"    # I
    .param p2, "item"    # Lcom/android/dx/cf/code/BootstrapMethodsList$Item;

    .line 56
    if-eqz p2, :cond_0

    .line 60
    invoke-virtual {p0, p1, p2}, Lcom/android/dx/cf/code/BootstrapMethodsList;->set0(ILjava/lang/Object;)V

    .line 61
    return-void

    .line 57
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "item == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public set(ILcom/android/dx/rop/cst/CstType;Lcom/android/dx/rop/cst/CstMethodHandle;Lcom/android/dx/cf/code/BootstrapMethodArgumentsList;)V
    .locals 1
    .param p1, "n"    # I
    .param p2, "declaringClass"    # Lcom/android/dx/rop/cst/CstType;
    .param p3, "bootstrapMethodHandle"    # Lcom/android/dx/rop/cst/CstMethodHandle;
    .param p4, "arguments"    # Lcom/android/dx/cf/code/BootstrapMethodArgumentsList;

    .line 73
    new-instance v0, Lcom/android/dx/cf/code/BootstrapMethodsList$Item;

    invoke-direct {v0, p2, p3, p4}, Lcom/android/dx/cf/code/BootstrapMethodsList$Item;-><init>(Lcom/android/dx/rop/cst/CstType;Lcom/android/dx/rop/cst/CstMethodHandle;Lcom/android/dx/cf/code/BootstrapMethodArgumentsList;)V

    invoke-virtual {p0, p1, v0}, Lcom/android/dx/cf/code/BootstrapMethodsList;->set(ILcom/android/dx/cf/code/BootstrapMethodsList$Item;)V

    .line 74
    return-void
.end method
