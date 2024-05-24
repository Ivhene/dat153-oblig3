.class public final Lcom/android/dx/dex/code/PositionList;
.super Lcom/android/dx/util/FixedSizeList;
.source "PositionList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dx/dex/code/PositionList$Entry;
    }
.end annotation


# static fields
.field public static final EMPTY:Lcom/android/dx/dex/code/PositionList;

.field public static final IMPORTANT:I = 0x3

.field public static final LINES:I = 0x2

.field public static final NONE:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 28
    new-instance v0, Lcom/android/dx/dex/code/PositionList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/dx/dex/code/PositionList;-><init>(I)V

    sput-object v0, Lcom/android/dx/dex/code/PositionList;->EMPTY:Lcom/android/dx/dex/code/PositionList;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "size"    # I

    .line 120
    invoke-direct {p0, p1}, Lcom/android/dx/util/FixedSizeList;-><init>(I)V

    .line 121
    return-void
.end method

.method public static make(Lcom/android/dx/dex/code/DalvInsnList;I)Lcom/android/dx/dex/code/PositionList;
    .locals 11
    .param p0, "insns"    # Lcom/android/dx/dex/code/DalvInsnList;
    .param p1, "howMuch"    # I

    .line 59
    packed-switch p1, :pswitch_data_0

    .line 69
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bogus howMuch"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :pswitch_0
    nop

    .line 73
    sget-object v0, Lcom/android/dx/rop/code/SourcePosition;->NO_INFO:Lcom/android/dx/rop/code/SourcePosition;

    .line 74
    .local v0, "noInfo":Lcom/android/dx/rop/code/SourcePosition;
    move-object v1, v0

    .line 75
    .local v1, "cur":Lcom/android/dx/rop/code/SourcePosition;
    invoke-virtual {p0}, Lcom/android/dx/dex/code/DalvInsnList;->size()I

    move-result v2

    .line 76
    .local v2, "sz":I
    new-array v3, v2, [Lcom/android/dx/dex/code/PositionList$Entry;

    .line 77
    .local v3, "arr":[Lcom/android/dx/dex/code/PositionList$Entry;
    const/4 v4, 0x0

    .line 78
    .local v4, "lastWasTarget":Z
    const/4 v5, 0x0

    .line 80
    .local v5, "at":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v2, :cond_4

    .line 81
    invoke-virtual {p0, v6}, Lcom/android/dx/dex/code/DalvInsnList;->get(I)Lcom/android/dx/dex/code/DalvInsn;

    move-result-object v7

    .line 83
    .local v7, "insn":Lcom/android/dx/dex/code/DalvInsn;
    instance-of v8, v7, Lcom/android/dx/dex/code/CodeAddress;

    if-eqz v8, :cond_0

    .line 84
    const/4 v4, 0x1

    .line 85
    goto :goto_1

    .line 88
    :cond_0
    invoke-virtual {v7}, Lcom/android/dx/dex/code/DalvInsn;->getPosition()Lcom/android/dx/rop/code/SourcePosition;

    move-result-object v8

    .line 90
    .local v8, "pos":Lcom/android/dx/rop/code/SourcePosition;
    invoke-virtual {v8, v0}, Lcom/android/dx/rop/code/SourcePosition;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    invoke-virtual {v8, v1}, Lcom/android/dx/rop/code/SourcePosition;->sameLine(Lcom/android/dx/rop/code/SourcePosition;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 91
    goto :goto_1

    .line 94
    :cond_1
    const/4 v9, 0x3

    if-ne p1, v9, :cond_2

    if-nez v4, :cond_2

    .line 95
    goto :goto_1

    .line 98
    :cond_2
    move-object v1, v8

    .line 99
    new-instance v9, Lcom/android/dx/dex/code/PositionList$Entry;

    invoke-virtual {v7}, Lcom/android/dx/dex/code/DalvInsn;->getAddress()I

    move-result v10

    invoke-direct {v9, v10, v8}, Lcom/android/dx/dex/code/PositionList$Entry;-><init>(ILcom/android/dx/rop/code/SourcePosition;)V

    aput-object v9, v3, v5

    .line 100
    add-int/lit8 v5, v5, 0x1

    .line 102
    const/4 v4, 0x0

    .line 80
    .end local v7    # "insn":Lcom/android/dx/dex/code/DalvInsn;
    .end local v8    # "pos":Lcom/android/dx/rop/code/SourcePosition;
    :cond_3
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 105
    .end local v6    # "i":I
    :cond_4
    new-instance v6, Lcom/android/dx/dex/code/PositionList;

    invoke-direct {v6, v5}, Lcom/android/dx/dex/code/PositionList;-><init>(I)V

    .line 106
    .local v6, "result":Lcom/android/dx/dex/code/PositionList;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2
    if-ge v7, v5, :cond_5

    .line 107
    aget-object v8, v3, v7

    invoke-virtual {v6, v7, v8}, Lcom/android/dx/dex/code/PositionList;->set(ILcom/android/dx/dex/code/PositionList$Entry;)V

    .line 106
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 110
    .end local v7    # "i":I
    :cond_5
    invoke-virtual {v6}, Lcom/android/dx/dex/code/PositionList;->setImmutable()V

    .line 111
    return-object v6

    .line 61
    .end local v0    # "noInfo":Lcom/android/dx/rop/code/SourcePosition;
    .end local v1    # "cur":Lcom/android/dx/rop/code/SourcePosition;
    .end local v2    # "sz":I
    .end local v3    # "arr":[Lcom/android/dx/dex/code/PositionList$Entry;
    .end local v4    # "lastWasTarget":Z
    .end local v5    # "at":I
    .end local v6    # "result":Lcom/android/dx/dex/code/PositionList;
    :pswitch_1
    sget-object v0, Lcom/android/dx/dex/code/PositionList;->EMPTY:Lcom/android/dx/dex/code/PositionList;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public get(I)Lcom/android/dx/dex/code/PositionList$Entry;
    .locals 1
    .param p1, "n"    # I

    .line 132
    invoke-virtual {p0, p1}, Lcom/android/dx/dex/code/PositionList;->get0(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dx/dex/code/PositionList$Entry;

    return-object v0
.end method

.method public set(ILcom/android/dx/dex/code/PositionList$Entry;)V
    .locals 0
    .param p1, "n"    # I
    .param p2, "entry"    # Lcom/android/dx/dex/code/PositionList$Entry;

    .line 142
    invoke-virtual {p0, p1, p2}, Lcom/android/dx/dex/code/PositionList;->set0(ILjava/lang/Object;)V

    .line 143
    return-void
.end method
