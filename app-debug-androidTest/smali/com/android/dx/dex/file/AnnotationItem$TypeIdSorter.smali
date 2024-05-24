.class Lcom/android/dx/dex/file/AnnotationItem$TypeIdSorter;
.super Ljava/lang/Object;
.source "AnnotationItem.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dx/dex/file/AnnotationItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TypeIdSorter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/dx/dex/file/AnnotationItem;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/dx/dex/file/AnnotationItem$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/dx/dex/file/AnnotationItem$1;

    .line 68
    invoke-direct {p0}, Lcom/android/dx/dex/file/AnnotationItem$TypeIdSorter;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/dx/dex/file/AnnotationItem;Lcom/android/dx/dex/file/AnnotationItem;)I
    .locals 3
    .param p1, "item1"    # Lcom/android/dx/dex/file/AnnotationItem;
    .param p2, "item2"    # Lcom/android/dx/dex/file/AnnotationItem;

    .line 72
    invoke-static {p1}, Lcom/android/dx/dex/file/AnnotationItem;->access$100(Lcom/android/dx/dex/file/AnnotationItem;)Lcom/android/dx/dex/file/TypeIdItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dx/dex/file/TypeIdItem;->getIndex()I

    move-result v0

    .line 73
    .local v0, "index1":I
    invoke-static {p2}, Lcom/android/dx/dex/file/AnnotationItem;->access$100(Lcom/android/dx/dex/file/AnnotationItem;)Lcom/android/dx/dex/file/TypeIdItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/dx/dex/file/TypeIdItem;->getIndex()I

    move-result v1

    .line 75
    .local v1, "index2":I
    if-ge v0, v1, :cond_0

    .line 76
    const/4 v2, -0x1

    return v2

    .line 77
    :cond_0
    if-le v0, v1, :cond_1

    .line 78
    const/4 v2, 0x1

    return v2

    .line 81
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 68
    check-cast p1, Lcom/android/dx/dex/file/AnnotationItem;

    check-cast p2, Lcom/android/dx/dex/file/AnnotationItem;

    invoke-virtual {p0, p1, p2}, Lcom/android/dx/dex/file/AnnotationItem$TypeIdSorter;->compare(Lcom/android/dx/dex/file/AnnotationItem;Lcom/android/dx/dex/file/AnnotationItem;)I

    move-result p1

    return p1
.end method
