.class public abstract Lorg/checkerframework/com/google/common/collect/ImmutableCollection;
.super Ljava/util/AbstractCollection;
.source "ImmutableCollection.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/com/google/common/collect/ImmutableCollection$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractCollection<",
        "TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final EMPTY_ARRAY:[Ljava/lang/Object;

.field static final SPLITERATOR_CHARACTERISTICS:I = 0x510


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 183
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lorg/checkerframework/com/google/common/collect/ImmutableCollection;->EMPTY_ARRAY:[Ljava/lang/Object;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 172
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableCollection;, "Lorg/checkerframework/com/google/common/collect/ImmutableCollection<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 244
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableCollection;, "Lorg/checkerframework/com/google/common/collect/ImmutableCollection<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 270
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableCollection;, "Lorg/checkerframework/com/google/common/collect/ImmutableCollection<TE;>;"
    .local p1, "newElements":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public asList()Lorg/checkerframework/com/google/common/collect/ImmutableList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/ImmutableList<",
            "TE;>;"
        }
    .end annotation

    .line 334
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableCollection;, "Lorg/checkerframework/com/google/common/collect/ImmutableCollection<TE;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableCollection;->size()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 340
    new-instance v0, Lorg/checkerframework/com/google/common/collect/RegularImmutableAsList;

    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableCollection;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/checkerframework/com/google/common/collect/RegularImmutableAsList;-><init>(Lorg/checkerframework/com/google/common/collect/ImmutableCollection;[Ljava/lang/Object;)V

    return-object v0

    .line 338
    :pswitch_0
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableCollection;->iterator()Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0

    .line 336
    :pswitch_1
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->of()Lorg/checkerframework/com/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final clear()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 320
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableCollection;, "Lorg/checkerframework/com/google/common/collect/ImmutableCollection<TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public abstract contains(Ljava/lang/Object;)Z
.end method

.method copyIntoArray([Ljava/lang/Object;I)I
    .locals 3
    .param p1, "dst"    # [Ljava/lang/Object;
    .param p2, "offset"    # I

    .line 358
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableCollection;, "Lorg/checkerframework/com/google/common/collect/ImmutableCollection<TE;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableCollection;->iterator()Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 359
    .local v1, "e":Ljava/lang/Object;, "TE;"
    add-int/lit8 v2, p2, 0x1

    .end local p2    # "offset":I
    .local v2, "offset":I
    aput-object v1, p1, p2

    .line 360
    .end local v1    # "e":Ljava/lang/Object;, "TE;"
    move p2, v2

    goto :goto_0

    .line 361
    .end local v2    # "offset":I
    .restart local p2    # "offset":I
    :cond_0
    return p2
.end method

.method internalArray()[Ljava/lang/Object;
    .locals 1

    .line 212
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableCollection;, "Lorg/checkerframework/com/google/common/collect/ImmutableCollection<TE;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method internalArrayEnd()I
    .locals 1

    .line 228
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableCollection;, "Lorg/checkerframework/com/google/common/collect/ImmutableCollection<TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method internalArrayStart()I
    .locals 1

    .line 220
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableCollection;, "Lorg/checkerframework/com/google/common/collect/ImmutableCollection<TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method abstract isPartialView()Z
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 159
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableCollection;, "Lorg/checkerframework/com/google/common/collect/ImmutableCollection<TE;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableCollection;->iterator()Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public abstract iterator()Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator<",
            "TE;>;"
        }
    .end annotation
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 257
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableCollection;, "Lorg/checkerframework/com/google/common/collect/ImmutableCollection<TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final removeAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 283
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableCollection;, "Lorg/checkerframework/com/google/common/collect/ImmutableCollection<TE;>;"
    .local p1, "oldElements":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final removeIf(Ljava/util/function/Predicate;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "-TE;>;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 296
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableCollection;, "Lorg/checkerframework/com/google/common/collect/ImmutableCollection<TE;>;"
    .local p1, "filter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final retainAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 308
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableCollection;, "Lorg/checkerframework/com/google/common/collect/ImmutableCollection<TE;>;"
    .local p1, "elementsToKeep":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public spliterator()Ljava/util/Spliterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "TE;>;"
        }
    .end annotation

    .line 180
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableCollection;, "Lorg/checkerframework/com/google/common/collect/ImmutableCollection<TE;>;"
    const/16 v0, 0x510

    invoke-static {p0, v0}, Ljava/util/Spliterators;->spliterator(Ljava/util/Collection;I)Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method public final toArray()[Ljava/lang/Object;
    .locals 1

    .line 187
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableCollection;, "Lorg/checkerframework/com/google/common/collect/ImmutableCollection<TE;>;"
    sget-object v0, Lorg/checkerframework/com/google/common/collect/ImmutableCollection;->EMPTY_ARRAY:[Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/google/common/collect/ImmutableCollection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 193
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableCollection;, "Lorg/checkerframework/com/google/common/collect/ImmutableCollection<TE;>;"
    .local p1, "other":[Ljava/lang/Object;, "[TT;"
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableCollection;->size()I

    move-result v0

    .line 196
    .local v0, "size":I
    array-length v1, p1

    if-ge v1, v0, :cond_2

    .line 197
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableCollection;->internalArray()[Ljava/lang/Object;

    move-result-object v1

    .line 198
    .local v1, "internal":[Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 199
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableCollection;->internalArrayStart()I

    move-result v2

    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableCollection;->internalArrayEnd()I

    move-result v3

    invoke-static {v1, v2, v3, p1}, Lorg/checkerframework/com/google/common/collect/Platform;->copy([Ljava/lang/Object;II[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 201
    :cond_0
    invoke-static {p1, v0}, Lorg/checkerframework/com/google/common/collect/ObjectArrays;->newArray([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    .line 202
    .end local v1    # "internal":[Ljava/lang/Object;
    :cond_1
    goto :goto_0

    :cond_2
    array-length v1, p1

    if-le v1, v0, :cond_1

    .line 203
    const/4 v1, 0x0

    aput-object v1, p1, v0

    .line 205
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lorg/checkerframework/com/google/common/collect/ImmutableCollection;->copyIntoArray([Ljava/lang/Object;I)I

    .line 206
    return-object p1
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 2

    .line 366
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableCollection;, "Lorg/checkerframework/com/google/common/collect/ImmutableCollection<TE;>;"
    new-instance v0, Lorg/checkerframework/com/google/common/collect/ImmutableList$SerializedForm;

    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableCollection;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/com/google/common/collect/ImmutableList$SerializedForm;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method
