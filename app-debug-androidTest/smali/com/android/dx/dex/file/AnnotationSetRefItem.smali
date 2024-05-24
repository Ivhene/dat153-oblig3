.class public final Lcom/android/dx/dex/file/AnnotationSetRefItem;
.super Lcom/android/dx/dex/file/OffsettedItem;
.source "AnnotationSetRefItem.java"


# static fields
.field private static final ALIGNMENT:I = 0x4

.field private static final WRITE_SIZE:I = 0x4


# instance fields
.field private annotations:Lcom/android/dx/dex/file/AnnotationSetItem;


# direct methods
.method public constructor <init>(Lcom/android/dx/dex/file/AnnotationSetItem;)V
    .locals 2
    .param p1, "annotations"    # Lcom/android/dx/dex/file/AnnotationSetItem;

    .line 41
    const/4 v0, 0x4

    invoke-direct {p0, v0, v0}, Lcom/android/dx/dex/file/OffsettedItem;-><init>(II)V

    .line 43
    if-eqz p1, :cond_0

    .line 47
    iput-object p1, p0, Lcom/android/dx/dex/file/AnnotationSetRefItem;->annotations:Lcom/android/dx/dex/file/AnnotationSetItem;

    .line 48
    return-void

    .line 44
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "annotations == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addContents(Lcom/android/dx/dex/file/DexFile;)V
    .locals 2
    .param p1, "file"    # Lcom/android/dx/dex/file/DexFile;

    .line 59
    invoke-virtual {p1}, Lcom/android/dx/dex/file/DexFile;->getWordData()Lcom/android/dx/dex/file/MixedItemSection;

    move-result-object v0

    .line 61
    .local v0, "wordData":Lcom/android/dx/dex/file/MixedItemSection;
    iget-object v1, p0, Lcom/android/dx/dex/file/AnnotationSetRefItem;->annotations:Lcom/android/dx/dex/file/AnnotationSetItem;

    invoke-virtual {v0, v1}, Lcom/android/dx/dex/file/MixedItemSection;->intern(Lcom/android/dx/dex/file/OffsettedItem;)Lcom/android/dx/dex/file/OffsettedItem;

    move-result-object v1

    check-cast v1, Lcom/android/dx/dex/file/AnnotationSetItem;

    iput-object v1, p0, Lcom/android/dx/dex/file/AnnotationSetRefItem;->annotations:Lcom/android/dx/dex/file/AnnotationSetItem;

    .line 62
    return-void
.end method

.method public itemType()Lcom/android/dx/dex/file/ItemType;
    .locals 1

    .line 53
    sget-object v0, Lcom/android/dx/dex/file/ItemType;->TYPE_ANNOTATION_SET_REF_ITEM:Lcom/android/dx/dex/file/ItemType;

    return-object v0
.end method

.method public toHuman()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/android/dx/dex/file/AnnotationSetRefItem;->annotations:Lcom/android/dx/dex/file/AnnotationSetItem;

    invoke-virtual {v0}, Lcom/android/dx/dex/file/AnnotationSetItem;->toHuman()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected writeTo0(Lcom/android/dx/dex/file/DexFile;Lcom/android/dx/util/AnnotatedOutput;)V
    .locals 3
    .param p1, "file"    # Lcom/android/dx/dex/file/DexFile;
    .param p2, "out"    # Lcom/android/dx/util/AnnotatedOutput;

    .line 73
    iget-object v0, p0, Lcom/android/dx/dex/file/AnnotationSetRefItem;->annotations:Lcom/android/dx/dex/file/AnnotationSetItem;

    invoke-virtual {v0}, Lcom/android/dx/dex/file/AnnotationSetItem;->getAbsoluteOffset()I

    move-result v0

    .line 75
    .local v0, "annotationsOff":I
    invoke-interface {p2}, Lcom/android/dx/util/AnnotatedOutput;->annotates()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 76
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  annotations_off: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-interface {p2, v2, v1}, Lcom/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 79
    :cond_0
    invoke-interface {p2, v0}, Lcom/android/dx/util/AnnotatedOutput;->writeInt(I)V

    .line 80
    return-void
.end method
