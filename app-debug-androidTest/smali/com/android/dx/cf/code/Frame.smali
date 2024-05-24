.class public final Lcom/android/dx/cf/code/Frame;
.super Ljava/lang/Object;
.source "Frame.java"


# instance fields
.field private final locals:Lcom/android/dx/cf/code/LocalsArray;

.field private final stack:Lcom/android/dx/cf/code/ExecutionStack;

.field private final subroutines:Lcom/android/dx/util/IntList;


# direct methods
.method public constructor <init>(II)V
    .locals 2
    .param p1, "maxLocals"    # I
    .param p2, "maxStack"    # I

    .line 87
    new-instance v0, Lcom/android/dx/cf/code/OneLocalsArray;

    invoke-direct {v0, p1}, Lcom/android/dx/cf/code/OneLocalsArray;-><init>(I)V

    new-instance v1, Lcom/android/dx/cf/code/ExecutionStack;

    invoke-direct {v1, p2}, Lcom/android/dx/cf/code/ExecutionStack;-><init>(I)V

    invoke-direct {p0, v0, v1}, Lcom/android/dx/cf/code/Frame;-><init>(Lcom/android/dx/cf/code/LocalsArray;Lcom/android/dx/cf/code/ExecutionStack;)V

    .line 88
    return-void
.end method

.method private constructor <init>(Lcom/android/dx/cf/code/LocalsArray;Lcom/android/dx/cf/code/ExecutionStack;)V
    .locals 1
    .param p1, "locals"    # Lcom/android/dx/cf/code/LocalsArray;
    .param p2, "stack"    # Lcom/android/dx/cf/code/ExecutionStack;

    .line 48
    sget-object v0, Lcom/android/dx/util/IntList;->EMPTY:Lcom/android/dx/util/IntList;

    invoke-direct {p0, p1, p2, v0}, Lcom/android/dx/cf/code/Frame;-><init>(Lcom/android/dx/cf/code/LocalsArray;Lcom/android/dx/cf/code/ExecutionStack;Lcom/android/dx/util/IntList;)V

    .line 49
    return-void
.end method

.method private constructor <init>(Lcom/android/dx/cf/code/LocalsArray;Lcom/android/dx/cf/code/ExecutionStack;Lcom/android/dx/util/IntList;)V
    .locals 2
    .param p1, "locals"    # Lcom/android/dx/cf/code/LocalsArray;
    .param p2, "stack"    # Lcom/android/dx/cf/code/ExecutionStack;
    .param p3, "subroutines"    # Lcom/android/dx/util/IntList;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    if-eqz p1, :cond_1

    .line 65
    if-eqz p2, :cond_0

    .line 69
    invoke-virtual {p3}, Lcom/android/dx/util/IntList;->throwIfMutable()V

    .line 71
    iput-object p1, p0, Lcom/android/dx/cf/code/Frame;->locals:Lcom/android/dx/cf/code/LocalsArray;

    .line 72
    iput-object p2, p0, Lcom/android/dx/cf/code/Frame;->stack:Lcom/android/dx/cf/code/ExecutionStack;

    .line 73
    iput-object p3, p0, Lcom/android/dx/cf/code/Frame;->subroutines:Lcom/android/dx/util/IntList;

    .line 74
    return-void

    .line 66
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "stack == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "locals == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static adjustLocalsForSubroutines(Lcom/android/dx/cf/code/LocalsArray;Lcom/android/dx/util/IntList;)Lcom/android/dx/cf/code/LocalsArray;
    .locals 2
    .param p0, "locals"    # Lcom/android/dx/cf/code/LocalsArray;
    .param p1, "subroutines"    # Lcom/android/dx/util/IntList;

    .line 275
    instance-of v0, p0, Lcom/android/dx/cf/code/LocalsArraySet;

    if-nez v0, :cond_0

    .line 277
    return-object p0

    .line 280
    :cond_0
    move-object v0, p0

    check-cast v0, Lcom/android/dx/cf/code/LocalsArraySet;

    .line 282
    .local v0, "laSet":Lcom/android/dx/cf/code/LocalsArraySet;
    invoke-virtual {p1}, Lcom/android/dx/util/IntList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 290
    invoke-virtual {v0}, Lcom/android/dx/cf/code/LocalsArraySet;->getPrimary()Lcom/android/dx/cf/code/OneLocalsArray;

    move-result-object v1

    return-object v1

    .line 299
    :cond_1
    return-object v0
.end method

.method private mergeSubroutineLists(Lcom/android/dx/util/IntList;)Lcom/android/dx/util/IntList;
    .locals 6
    .param p1, "otherSubroutines"    # Lcom/android/dx/util/IntList;

    .line 243
    iget-object v0, p0, Lcom/android/dx/cf/code/Frame;->subroutines:Lcom/android/dx/util/IntList;

    invoke-virtual {v0, p1}, Lcom/android/dx/util/IntList;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/android/dx/cf/code/Frame;->subroutines:Lcom/android/dx/util/IntList;

    return-object v0

    .line 247
    :cond_0
    new-instance v0, Lcom/android/dx/util/IntList;

    invoke-direct {v0}, Lcom/android/dx/util/IntList;-><init>()V

    .line 249
    .local v0, "resultSubroutines":Lcom/android/dx/util/IntList;
    iget-object v1, p0, Lcom/android/dx/cf/code/Frame;->subroutines:Lcom/android/dx/util/IntList;

    invoke-virtual {v1}, Lcom/android/dx/util/IntList;->size()I

    move-result v1

    .line 250
    .local v1, "szSubroutines":I
    invoke-virtual {p1}, Lcom/android/dx/util/IntList;->size()I

    move-result v2

    .line 251
    .local v2, "szOthers":I
    const/4 v3, 0x0

    .line 252
    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_1

    if-ge v3, v2, :cond_1

    iget-object v4, p0, Lcom/android/dx/cf/code/Frame;->subroutines:Lcom/android/dx/util/IntList;

    invoke-virtual {v4, v3}, Lcom/android/dx/util/IntList;->get(I)I

    move-result v4

    invoke-virtual {p1, v3}, Lcom/android/dx/util/IntList;->get(I)I

    move-result v5

    if-ne v4, v5, :cond_1

    .line 253
    invoke-virtual {v0, v3}, Lcom/android/dx/util/IntList;->add(I)V

    .line 252
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 256
    .end local v3    # "i":I
    :cond_1
    invoke-virtual {v0}, Lcom/android/dx/util/IntList;->setImmutable()V

    .line 258
    return-object v0
.end method


# virtual methods
.method public annotate(Lcom/android/dex/util/ExceptionWithContext;)V
    .locals 1
    .param p1, "ex"    # Lcom/android/dex/util/ExceptionWithContext;

    .line 412
    iget-object v0, p0, Lcom/android/dx/cf/code/Frame;->locals:Lcom/android/dx/cf/code/LocalsArray;

    invoke-virtual {v0, p1}, Lcom/android/dx/cf/code/LocalsArray;->annotate(Lcom/android/dex/util/ExceptionWithContext;)V

    .line 413
    iget-object v0, p0, Lcom/android/dx/cf/code/Frame;->stack:Lcom/android/dx/cf/code/ExecutionStack;

    invoke-virtual {v0, p1}, Lcom/android/dx/cf/code/ExecutionStack;->annotate(Lcom/android/dex/util/ExceptionWithContext;)V

    .line 414
    return-void
.end method

.method public copy()Lcom/android/dx/cf/code/Frame;
    .locals 4

    .line 98
    new-instance v0, Lcom/android/dx/cf/code/Frame;

    iget-object v1, p0, Lcom/android/dx/cf/code/Frame;->locals:Lcom/android/dx/cf/code/LocalsArray;

    invoke-virtual {v1}, Lcom/android/dx/cf/code/LocalsArray;->copy()Lcom/android/dx/cf/code/LocalsArray;

    move-result-object v1

    iget-object v2, p0, Lcom/android/dx/cf/code/Frame;->stack:Lcom/android/dx/cf/code/ExecutionStack;

    invoke-virtual {v2}, Lcom/android/dx/cf/code/ExecutionStack;->copy()Lcom/android/dx/cf/code/ExecutionStack;

    move-result-object v2

    iget-object v3, p0, Lcom/android/dx/cf/code/Frame;->subroutines:Lcom/android/dx/util/IntList;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/dx/cf/code/Frame;-><init>(Lcom/android/dx/cf/code/LocalsArray;Lcom/android/dx/cf/code/ExecutionStack;Lcom/android/dx/util/IntList;)V

    return-object v0
.end method

.method public getLocals()Lcom/android/dx/cf/code/LocalsArray;
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/android/dx/cf/code/Frame;->locals:Lcom/android/dx/cf/code/LocalsArray;

    return-object v0
.end method

.method public getStack()Lcom/android/dx/cf/code/ExecutionStack;
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/android/dx/cf/code/Frame;->stack:Lcom/android/dx/cf/code/ExecutionStack;

    return-object v0
.end method

.method public getSubroutines()Lcom/android/dx/util/IntList;
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/android/dx/cf/code/Frame;->subroutines:Lcom/android/dx/util/IntList;

    return-object v0
.end method

.method public initializeWithParameters(Lcom/android/dx/rop/type/StdTypeList;)V
    .locals 5
    .param p1, "params"    # Lcom/android/dx/rop/type/StdTypeList;

    .line 159
    const/4 v0, 0x0

    .line 160
    .local v0, "at":I
    invoke-virtual {p1}, Lcom/android/dx/rop/type/StdTypeList;->size()I

    move-result v1

    .line 162
    .local v1, "sz":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 163
    invoke-virtual {p1, v2}, Lcom/android/dx/rop/type/StdTypeList;->get(I)Lcom/android/dx/rop/type/Type;

    move-result-object v3

    .line 164
    .local v3, "one":Lcom/android/dx/rop/type/Type;
    iget-object v4, p0, Lcom/android/dx/cf/code/Frame;->locals:Lcom/android/dx/cf/code/LocalsArray;

    invoke-virtual {v4, v0, v3}, Lcom/android/dx/cf/code/LocalsArray;->set(ILcom/android/dx/rop/type/TypeBearer;)V

    .line 165
    invoke-virtual {v3}, Lcom/android/dx/rop/type/Type;->getCategory()I

    move-result v4

    add-int/2addr v0, v4

    .line 162
    .end local v3    # "one":Lcom/android/dx/rop/type/Type;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 167
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method public makeExceptionHandlerStartFrame(Lcom/android/dx/rop/cst/CstType;)Lcom/android/dx/cf/code/Frame;
    .locals 4
    .param p1, "exceptionClass"    # Lcom/android/dx/rop/cst/CstType;

    .line 397
    invoke-virtual {p0}, Lcom/android/dx/cf/code/Frame;->getStack()Lcom/android/dx/cf/code/ExecutionStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dx/cf/code/ExecutionStack;->copy()Lcom/android/dx/cf/code/ExecutionStack;

    move-result-object v0

    .line 399
    .local v0, "newStack":Lcom/android/dx/cf/code/ExecutionStack;
    invoke-virtual {v0}, Lcom/android/dx/cf/code/ExecutionStack;->clear()V

    .line 400
    invoke-virtual {v0, p1}, Lcom/android/dx/cf/code/ExecutionStack;->push(Lcom/android/dx/rop/type/TypeBearer;)V

    .line 402
    new-instance v1, Lcom/android/dx/cf/code/Frame;

    invoke-virtual {p0}, Lcom/android/dx/cf/code/Frame;->getLocals()Lcom/android/dx/cf/code/LocalsArray;

    move-result-object v2

    iget-object v3, p0, Lcom/android/dx/cf/code/Frame;->subroutines:Lcom/android/dx/util/IntList;

    invoke-direct {v1, v2, v0, v3}, Lcom/android/dx/cf/code/Frame;-><init>(Lcom/android/dx/cf/code/LocalsArray;Lcom/android/dx/cf/code/ExecutionStack;Lcom/android/dx/util/IntList;)V

    return-object v1
.end method

.method public makeInitialized(Lcom/android/dx/rop/type/Type;)V
    .locals 1
    .param p1, "type"    # Lcom/android/dx/rop/type/Type;

    .line 117
    iget-object v0, p0, Lcom/android/dx/cf/code/Frame;->locals:Lcom/android/dx/cf/code/LocalsArray;

    invoke-virtual {v0, p1}, Lcom/android/dx/cf/code/LocalsArray;->makeInitialized(Lcom/android/dx/rop/type/Type;)V

    .line 118
    iget-object v0, p0, Lcom/android/dx/cf/code/Frame;->stack:Lcom/android/dx/cf/code/ExecutionStack;

    invoke-virtual {v0, p1}, Lcom/android/dx/cf/code/ExecutionStack;->makeInitialized(Lcom/android/dx/rop/type/Type;)V

    .line 119
    return-void
.end method

.method public makeNewSubroutineStartFrame(II)Lcom/android/dx/cf/code/Frame;
    .locals 5
    .param p1, "subLabel"    # I
    .param p2, "callerLabel"    # I

    .line 382
    iget-object v0, p0, Lcom/android/dx/cf/code/Frame;->subroutines:Lcom/android/dx/util/IntList;

    invoke-virtual {v0}, Lcom/android/dx/util/IntList;->mutableCopy()Lcom/android/dx/util/IntList;

    move-result-object v0

    .line 383
    .local v0, "newSubroutines":Lcom/android/dx/util/IntList;
    invoke-virtual {v0, p1}, Lcom/android/dx/util/IntList;->add(I)V

    .line 384
    new-instance v1, Lcom/android/dx/cf/code/Frame;

    iget-object v2, p0, Lcom/android/dx/cf/code/Frame;->locals:Lcom/android/dx/cf/code/LocalsArray;

    invoke-virtual {v2}, Lcom/android/dx/cf/code/LocalsArray;->getPrimary()Lcom/android/dx/cf/code/OneLocalsArray;

    move-result-object v2

    iget-object v3, p0, Lcom/android/dx/cf/code/Frame;->stack:Lcom/android/dx/cf/code/ExecutionStack;

    .line 385
    invoke-static {p1}, Lcom/android/dx/util/IntList;->makeImmutable(I)Lcom/android/dx/util/IntList;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/android/dx/cf/code/Frame;-><init>(Lcom/android/dx/cf/code/LocalsArray;Lcom/android/dx/cf/code/ExecutionStack;Lcom/android/dx/util/IntList;)V

    .line 386
    .local v1, "newFrame":Lcom/android/dx/cf/code/Frame;
    invoke-virtual {v1, p0, p1, p2}, Lcom/android/dx/cf/code/Frame;->mergeWithSubroutineCaller(Lcom/android/dx/cf/code/Frame;II)Lcom/android/dx/cf/code/Frame;

    move-result-object v2

    return-object v2
.end method

.method public mergeWith(Lcom/android/dx/cf/code/Frame;)Lcom/android/dx/cf/code/Frame;
    .locals 4
    .param p1, "other"    # Lcom/android/dx/cf/code/Frame;

    .line 217
    invoke-virtual {p0}, Lcom/android/dx/cf/code/Frame;->getLocals()Lcom/android/dx/cf/code/LocalsArray;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/dx/cf/code/Frame;->getLocals()Lcom/android/dx/cf/code/LocalsArray;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/dx/cf/code/LocalsArray;->merge(Lcom/android/dx/cf/code/LocalsArray;)Lcom/android/dx/cf/code/LocalsArray;

    move-result-object v0

    .line 218
    .local v0, "resultLocals":Lcom/android/dx/cf/code/LocalsArray;
    invoke-virtual {p0}, Lcom/android/dx/cf/code/Frame;->getStack()Lcom/android/dx/cf/code/ExecutionStack;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/dx/cf/code/Frame;->getStack()Lcom/android/dx/cf/code/ExecutionStack;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/dx/cf/code/ExecutionStack;->merge(Lcom/android/dx/cf/code/ExecutionStack;)Lcom/android/dx/cf/code/ExecutionStack;

    move-result-object v1

    .line 219
    .local v1, "resultStack":Lcom/android/dx/cf/code/ExecutionStack;
    iget-object v2, p1, Lcom/android/dx/cf/code/Frame;->subroutines:Lcom/android/dx/util/IntList;

    invoke-direct {p0, v2}, Lcom/android/dx/cf/code/Frame;->mergeSubroutineLists(Lcom/android/dx/util/IntList;)Lcom/android/dx/util/IntList;

    move-result-object v2

    .line 221
    .local v2, "resultSubroutines":Lcom/android/dx/util/IntList;
    invoke-static {v0, v2}, Lcom/android/dx/cf/code/Frame;->adjustLocalsForSubroutines(Lcom/android/dx/cf/code/LocalsArray;Lcom/android/dx/util/IntList;)Lcom/android/dx/cf/code/LocalsArray;

    move-result-object v0

    .line 224
    invoke-virtual {p0}, Lcom/android/dx/cf/code/Frame;->getLocals()Lcom/android/dx/cf/code/LocalsArray;

    move-result-object v3

    if-ne v0, v3, :cond_0

    .line 225
    invoke-virtual {p0}, Lcom/android/dx/cf/code/Frame;->getStack()Lcom/android/dx/cf/code/ExecutionStack;

    move-result-object v3

    if-ne v1, v3, :cond_0

    iget-object v3, p0, Lcom/android/dx/cf/code/Frame;->subroutines:Lcom/android/dx/util/IntList;

    if-ne v3, v2, :cond_0

    .line 227
    return-object p0

    .line 230
    :cond_0
    new-instance v3, Lcom/android/dx/cf/code/Frame;

    invoke-direct {v3, v0, v1, v2}, Lcom/android/dx/cf/code/Frame;-><init>(Lcom/android/dx/cf/code/LocalsArray;Lcom/android/dx/cf/code/ExecutionStack;Lcom/android/dx/util/IntList;)V

    return-object v3
.end method

.method public mergeWithSubroutineCaller(Lcom/android/dx/cf/code/Frame;II)Lcom/android/dx/cf/code/Frame;
    .locals 10
    .param p1, "other"    # Lcom/android/dx/cf/code/Frame;
    .param p2, "subLabel"    # I
    .param p3, "predLabel"    # I

    .line 317
    invoke-virtual {p0}, Lcom/android/dx/cf/code/Frame;->getLocals()Lcom/android/dx/cf/code/LocalsArray;

    move-result-object v0

    .line 318
    invoke-virtual {p1}, Lcom/android/dx/cf/code/Frame;->getLocals()Lcom/android/dx/cf/code/LocalsArray;

    move-result-object v1

    .line 317
    invoke-virtual {v0, v1, p3}, Lcom/android/dx/cf/code/LocalsArray;->mergeWithSubroutineCaller(Lcom/android/dx/cf/code/LocalsArray;I)Lcom/android/dx/cf/code/LocalsArraySet;

    move-result-object v0

    .line 319
    .local v0, "resultLocals":Lcom/android/dx/cf/code/LocalsArray;
    invoke-virtual {p0}, Lcom/android/dx/cf/code/Frame;->getStack()Lcom/android/dx/cf/code/ExecutionStack;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/dx/cf/code/Frame;->getStack()Lcom/android/dx/cf/code/ExecutionStack;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/dx/cf/code/ExecutionStack;->merge(Lcom/android/dx/cf/code/ExecutionStack;)Lcom/android/dx/cf/code/ExecutionStack;

    move-result-object v1

    .line 321
    .local v1, "resultStack":Lcom/android/dx/cf/code/ExecutionStack;
    iget-object v2, p1, Lcom/android/dx/cf/code/Frame;->subroutines:Lcom/android/dx/util/IntList;

    invoke-virtual {v2}, Lcom/android/dx/util/IntList;->mutableCopy()Lcom/android/dx/util/IntList;

    move-result-object v2

    .line 322
    .local v2, "newOtherSubroutines":Lcom/android/dx/util/IntList;
    invoke-virtual {v2, p2}, Lcom/android/dx/util/IntList;->add(I)V

    .line 323
    invoke-virtual {v2}, Lcom/android/dx/util/IntList;->setImmutable()V

    .line 325
    invoke-virtual {p0}, Lcom/android/dx/cf/code/Frame;->getLocals()Lcom/android/dx/cf/code/LocalsArray;

    move-result-object v3

    if-ne v0, v3, :cond_0

    .line 326
    invoke-virtual {p0}, Lcom/android/dx/cf/code/Frame;->getStack()Lcom/android/dx/cf/code/ExecutionStack;

    move-result-object v3

    if-ne v1, v3, :cond_0

    iget-object v3, p0, Lcom/android/dx/cf/code/Frame;->subroutines:Lcom/android/dx/util/IntList;

    .line 327
    invoke-virtual {v3, v2}, Lcom/android/dx/util/IntList;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 328
    return-object p0

    .line 333
    :cond_0
    iget-object v3, p0, Lcom/android/dx/cf/code/Frame;->subroutines:Lcom/android/dx/util/IntList;

    invoke-virtual {v3, v2}, Lcom/android/dx/util/IntList;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 334
    iget-object v3, p0, Lcom/android/dx/cf/code/Frame;->subroutines:Lcom/android/dx/util/IntList;

    .local v3, "resultSubroutines":Lcom/android/dx/util/IntList;
    goto :goto_2

    .line 343
    .end local v3    # "resultSubroutines":Lcom/android/dx/util/IntList;
    :cond_1
    iget-object v3, p0, Lcom/android/dx/cf/code/Frame;->subroutines:Lcom/android/dx/util/IntList;

    invoke-virtual {v3}, Lcom/android/dx/util/IntList;->size()I

    move-result v3

    invoke-virtual {v2}, Lcom/android/dx/util/IntList;->size()I

    move-result v4

    if-le v3, v4, :cond_2

    .line 344
    iget-object v3, p0, Lcom/android/dx/cf/code/Frame;->subroutines:Lcom/android/dx/util/IntList;

    .line 345
    .restart local v3    # "resultSubroutines":Lcom/android/dx/util/IntList;
    move-object v4, v2

    .local v4, "nonResultSubroutines":Lcom/android/dx/util/IntList;
    goto :goto_0

    .line 347
    .end local v3    # "resultSubroutines":Lcom/android/dx/util/IntList;
    .end local v4    # "nonResultSubroutines":Lcom/android/dx/util/IntList;
    :cond_2
    move-object v3, v2

    .line 348
    .restart local v3    # "resultSubroutines":Lcom/android/dx/util/IntList;
    iget-object v4, p0, Lcom/android/dx/cf/code/Frame;->subroutines:Lcom/android/dx/util/IntList;

    .line 351
    .restart local v4    # "nonResultSubroutines":Lcom/android/dx/util/IntList;
    :goto_0
    invoke-virtual {v3}, Lcom/android/dx/util/IntList;->size()I

    move-result v5

    .line 352
    .local v5, "szResult":I
    invoke-virtual {v4}, Lcom/android/dx/util/IntList;->size()I

    move-result v6

    .line 354
    .local v6, "szNonResult":I
    add-int/lit8 v7, v6, -0x1

    .local v7, "i":I
    :goto_1
    if-ltz v7, :cond_4

    .line 355
    invoke-virtual {v4, v7}, Lcom/android/dx/util/IntList;->get(I)I

    move-result v8

    sub-int v9, v5, v6

    add-int/2addr v9, v7

    .line 356
    invoke-virtual {v3, v9}, Lcom/android/dx/util/IntList;->get(I)I

    move-result v9

    if-ne v8, v9, :cond_3

    .line 354
    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    .line 358
    :cond_3
    new-instance v8, Ljava/lang/RuntimeException;

    const-string v9, "Incompatible merged subroutines"

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 365
    .end local v4    # "nonResultSubroutines":Lcom/android/dx/util/IntList;
    .end local v5    # "szResult":I
    .end local v6    # "szNonResult":I
    .end local v7    # "i":I
    :cond_4
    :goto_2
    new-instance v4, Lcom/android/dx/cf/code/Frame;

    invoke-direct {v4, v0, v1, v3}, Lcom/android/dx/cf/code/Frame;-><init>(Lcom/android/dx/cf/code/LocalsArray;Lcom/android/dx/cf/code/ExecutionStack;Lcom/android/dx/util/IntList;)V

    return-object v4
.end method

.method public setImmutable()V
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/android/dx/cf/code/Frame;->locals:Lcom/android/dx/cf/code/LocalsArray;

    invoke-virtual {v0}, Lcom/android/dx/cf/code/LocalsArray;->setImmutable()V

    .line 106
    iget-object v0, p0, Lcom/android/dx/cf/code/Frame;->stack:Lcom/android/dx/cf/code/ExecutionStack;

    invoke-virtual {v0}, Lcom/android/dx/cf/code/ExecutionStack;->setImmutable()V

    .line 108
    return-void
.end method

.method public subFrameForLabel(II)Lcom/android/dx/cf/code/Frame;
    .locals 4
    .param p1, "startLabel"    # I
    .param p2, "subLabel"    # I

    .line 181
    const-string v0, "returning from invalid subroutine"

    const/4 v1, 0x0

    .line 183
    .local v1, "subLocals":Lcom/android/dx/cf/code/LocalsArray;
    iget-object v2, p0, Lcom/android/dx/cf/code/Frame;->locals:Lcom/android/dx/cf/code/LocalsArray;

    instance-of v3, v2, Lcom/android/dx/cf/code/LocalsArraySet;

    if-eqz v3, :cond_0

    .line 184
    check-cast v2, Lcom/android/dx/cf/code/LocalsArraySet;

    invoke-virtual {v2, p2}, Lcom/android/dx/cf/code/LocalsArraySet;->subArrayForLabel(I)Lcom/android/dx/cf/code/LocalsArray;

    move-result-object v1

    .line 189
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/dx/cf/code/Frame;->subroutines:Lcom/android/dx/util/IntList;

    invoke-virtual {v2}, Lcom/android/dx/util/IntList;->mutableCopy()Lcom/android/dx/util/IntList;

    move-result-object v2

    .line 191
    .local v2, "newSubroutines":Lcom/android/dx/util/IntList;
    invoke-virtual {v2}, Lcom/android/dx/util/IntList;->pop()I

    move-result v3

    if-ne v3, p1, :cond_2

    .line 194
    invoke-virtual {v2}, Lcom/android/dx/util/IntList;->setImmutable()V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    nop

    .line 201
    if-nez v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/android/dx/cf/code/Frame;

    iget-object v3, p0, Lcom/android/dx/cf/code/Frame;->stack:Lcom/android/dx/cf/code/ExecutionStack;

    invoke-direct {v0, v1, v3, v2}, Lcom/android/dx/cf/code/Frame;-><init>(Lcom/android/dx/cf/code/LocalsArray;Lcom/android/dx/cf/code/ExecutionStack;Lcom/android/dx/util/IntList;)V

    :goto_0
    return-object v0

    .line 192
    :cond_2
    :try_start_1
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v1    # "subLocals":Lcom/android/dx/cf/code/LocalsArray;
    .end local p1    # "startLabel":I
    .end local p2    # "subLabel":I
    throw v3
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    .line 197
    .end local v2    # "newSubroutines":Lcom/android/dx/util/IntList;
    .restart local v1    # "subLocals":Lcom/android/dx/cf/code/LocalsArray;
    .restart local p1    # "startLabel":I
    .restart local p2    # "subLabel":I
    :catch_0
    move-exception v0

    .line 198
    .local v0, "ex":Ljava/lang/NullPointerException;
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "can\'t return from non-subroutine"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 195
    .end local v0    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v2

    .line 196
    .local v2, "ex":Ljava/lang/IndexOutOfBoundsException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
