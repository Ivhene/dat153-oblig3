.class final Lorg/checkerframework/com/google/common/collect/Iterators$ArrayItr;
.super Lorg/checkerframework/com/google/common/collect/AbstractIndexedListIterator;
.source "Iterators.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/collect/Iterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ArrayItr"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/checkerframework/com/google/common/collect/AbstractIndexedListIterator<",
        "TT;>;"
    }
.end annotation


# static fields
.field static final EMPTY:Lorg/checkerframework/com/google/common/collect/UnmodifiableListIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/collect/UnmodifiableListIterator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final array:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field private final offset:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1026
    new-instance v0, Lorg/checkerframework/com/google/common/collect/Iterators$ArrayItr;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-direct {v0, v2, v1, v1, v1}, Lorg/checkerframework/com/google/common/collect/Iterators$ArrayItr;-><init>([Ljava/lang/Object;III)V

    sput-object v0, Lorg/checkerframework/com/google/common/collect/Iterators$ArrayItr;->EMPTY:Lorg/checkerframework/com/google/common/collect/UnmodifiableListIterator;

    return-void
.end method

.method constructor <init>([Ljava/lang/Object;III)V
    .locals 0
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;III)V"
        }
    .end annotation

    .line 1032
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Iterators$ArrayItr;, "Lorg/checkerframework/com/google/common/collect/Iterators$ArrayItr<TT;>;"
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    invoke-direct {p0, p3, p4}, Lorg/checkerframework/com/google/common/collect/AbstractIndexedListIterator;-><init>(II)V

    .line 1033
    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/Iterators$ArrayItr;->array:[Ljava/lang/Object;

    .line 1034
    iput p2, p0, Lorg/checkerframework/com/google/common/collect/Iterators$ArrayItr;->offset:I

    .line 1035
    return-void
.end method


# virtual methods
.method protected get(I)Ljava/lang/Object;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 1039
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Iterators$ArrayItr;, "Lorg/checkerframework/com/google/common/collect/Iterators$ArrayItr<TT;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Iterators$ArrayItr;->array:[Ljava/lang/Object;

    iget v1, p0, Lorg/checkerframework/com/google/common/collect/Iterators$ArrayItr;->offset:I

    add-int/2addr v1, p1

    aget-object v0, v0, v1

    return-object v0
.end method
