.class public Lcom/android/dx/dex/code/CatchTable$Entry;
.super Ljava/lang/Object;
.source "CatchTable.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dx/dex/code/CatchTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Entry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/android/dx/dex/code/CatchTable$Entry;",
        ">;"
    }
.end annotation


# instance fields
.field private final end:I

.field private final handlers:Lcom/android/dx/dex/code/CatchHandlerList;

.field private final start:I


# direct methods
.method public constructor <init>(IILcom/android/dx/dex/code/CatchHandlerList;)V
    .locals 2
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "handlers"    # Lcom/android/dx/dex/code/CatchHandlerList;

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    if-ltz p1, :cond_2

    .line 117
    if-le p2, p1, :cond_1

    .line 121
    invoke-virtual {p3}, Lcom/android/dx/dex/code/CatchHandlerList;->isMutable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 125
    iput p1, p0, Lcom/android/dx/dex/code/CatchTable$Entry;->start:I

    .line 126
    iput p2, p0, Lcom/android/dx/dex/code/CatchTable$Entry;->end:I

    .line 127
    iput-object p3, p0, Lcom/android/dx/dex/code/CatchTable$Entry;->handlers:Lcom/android/dx/dex/code/CatchHandlerList;

    .line 128
    return-void

    .line 122
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "handlers.isMutable()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "end <= start"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "start < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public compareTo(Lcom/android/dx/dex/code/CatchTable$Entry;)I
    .locals 4
    .param p1, "other"    # Lcom/android/dx/dex/code/CatchTable$Entry;

    .line 151
    iget v0, p0, Lcom/android/dx/dex/code/CatchTable$Entry;->start:I

    iget v1, p1, Lcom/android/dx/dex/code/CatchTable$Entry;->start:I

    const/4 v2, -0x1

    if-ge v0, v1, :cond_0

    .line 152
    return v2

    .line 153
    :cond_0
    const/4 v3, 0x1

    if-le v0, v1, :cond_1

    .line 154
    return v3

    .line 157
    :cond_1
    iget v0, p0, Lcom/android/dx/dex/code/CatchTable$Entry;->end:I

    iget v1, p1, Lcom/android/dx/dex/code/CatchTable$Entry;->end:I

    if-ge v0, v1, :cond_2

    .line 158
    return v2

    .line 159
    :cond_2
    if-le v0, v1, :cond_3

    .line 160
    return v3

    .line 163
    :cond_3
    iget-object v0, p0, Lcom/android/dx/dex/code/CatchTable$Entry;->handlers:Lcom/android/dx/dex/code/CatchHandlerList;

    iget-object v1, p1, Lcom/android/dx/dex/code/CatchTable$Entry;->handlers:Lcom/android/dx/dex/code/CatchHandlerList;

    invoke-virtual {v0, v1}, Lcom/android/dx/dex/code/CatchHandlerList;->compareTo(Lcom/android/dx/dex/code/CatchHandlerList;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 95
    check-cast p1, Lcom/android/dx/dex/code/CatchTable$Entry;

    invoke-virtual {p0, p1}, Lcom/android/dx/dex/code/CatchTable$Entry;->compareTo(Lcom/android/dx/dex/code/CatchTable$Entry;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "other"    # Ljava/lang/Object;

    .line 141
    instance-of v0, p1, Lcom/android/dx/dex/code/CatchTable$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 142
    move-object v0, p1

    check-cast v0, Lcom/android/dx/dex/code/CatchTable$Entry;

    invoke-virtual {p0, v0}, Lcom/android/dx/dex/code/CatchTable$Entry;->compareTo(Lcom/android/dx/dex/code/CatchTable$Entry;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 145
    :cond_1
    return v1
.end method

.method public getEnd()I
    .locals 1

    .line 181
    iget v0, p0, Lcom/android/dx/dex/code/CatchTable$Entry;->end:I

    return v0
.end method

.method public getHandlers()Lcom/android/dx/dex/code/CatchHandlerList;
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/android/dx/dex/code/CatchTable$Entry;->handlers:Lcom/android/dx/dex/code/CatchHandlerList;

    return-object v0
.end method

.method public getStart()I
    .locals 1

    .line 172
    iget v0, p0, Lcom/android/dx/dex/code/CatchTable$Entry;->start:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 133
    iget v0, p0, Lcom/android/dx/dex/code/CatchTable$Entry;->start:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/android/dx/dex/code/CatchTable$Entry;->end:I

    add-int/2addr v0, v1

    .line 134
    .local v0, "hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/android/dx/dex/code/CatchTable$Entry;->handlers:Lcom/android/dx/dex/code/CatchHandlerList;

    invoke-virtual {v2}, Lcom/android/dx/dex/code/CatchHandlerList;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 135
    .end local v0    # "hash":I
    .local v1, "hash":I
    return v1
.end method
