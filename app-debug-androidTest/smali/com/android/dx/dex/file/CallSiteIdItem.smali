.class public final Lcom/android/dx/dex/file/CallSiteIdItem;
.super Lcom/android/dx/dex/file/IndexedItem;
.source "CallSiteIdItem.java"

# interfaces
.implements Ljava/lang/Comparable;


# static fields
.field private static final ITEM_SIZE:I = 0x4


# instance fields
.field data:Lcom/android/dx/dex/file/CallSiteItem;

.field final invokeDynamicRef:Lcom/android/dx/rop/cst/CstCallSiteRef;


# direct methods
.method public constructor <init>(Lcom/android/dx/rop/cst/CstCallSiteRef;)V
    .locals 1
    .param p1, "invokeDynamicRef"    # Lcom/android/dx/rop/cst/CstCallSiteRef;

    .line 41
    invoke-direct {p0}, Lcom/android/dx/dex/file/IndexedItem;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/android/dx/dex/file/CallSiteIdItem;->invokeDynamicRef:Lcom/android/dx/rop/cst/CstCallSiteRef;

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/dx/dex/file/CallSiteIdItem;->data:Lcom/android/dx/dex/file/CallSiteItem;

    .line 44
    return-void
.end method


# virtual methods
.method public addContents(Lcom/android/dx/dex/file/DexFile;)V
    .locals 5
    .param p1, "file"    # Lcom/android/dx/dex/file/DexFile;

    .line 61
    iget-object v0, p0, Lcom/android/dx/dex/file/CallSiteIdItem;->invokeDynamicRef:Lcom/android/dx/rop/cst/CstCallSiteRef;

    invoke-virtual {v0}, Lcom/android/dx/rop/cst/CstCallSiteRef;->getCallSite()Lcom/android/dx/rop/cst/CstCallSite;

    move-result-object v0

    .line 62
    .local v0, "callSite":Lcom/android/dx/rop/cst/CstCallSite;
    invoke-virtual {p1}, Lcom/android/dx/dex/file/DexFile;->getCallSiteIds()Lcom/android/dx/dex/file/CallSiteIdsSection;

    move-result-object v1

    .line 63
    .local v1, "callSiteIds":Lcom/android/dx/dex/file/CallSiteIdsSection;
    invoke-virtual {v1, v0}, Lcom/android/dx/dex/file/CallSiteIdsSection;->getCallSiteItem(Lcom/android/dx/rop/cst/CstCallSite;)Lcom/android/dx/dex/file/CallSiteItem;

    move-result-object v2

    .line 64
    .local v2, "callSiteItem":Lcom/android/dx/dex/file/CallSiteItem;
    if-nez v2, :cond_0

    .line 65
    invoke-virtual {p1}, Lcom/android/dx/dex/file/DexFile;->getByteData()Lcom/android/dx/dex/file/MixedItemSection;

    move-result-object v3

    .line 66
    .local v3, "byteData":Lcom/android/dx/dex/file/MixedItemSection;
    new-instance v4, Lcom/android/dx/dex/file/CallSiteItem;

    invoke-direct {v4, v0}, Lcom/android/dx/dex/file/CallSiteItem;-><init>(Lcom/android/dx/rop/cst/CstCallSite;)V

    move-object v2, v4

    .line 67
    invoke-virtual {v3, v2}, Lcom/android/dx/dex/file/MixedItemSection;->add(Lcom/android/dx/dex/file/OffsettedItem;)V

    .line 68
    invoke-virtual {v1, v0, v2}, Lcom/android/dx/dex/file/CallSiteIdsSection;->addCallSiteItem(Lcom/android/dx/rop/cst/CstCallSite;Lcom/android/dx/dex/file/CallSiteItem;)V

    .line 70
    .end local v3    # "byteData":Lcom/android/dx/dex/file/MixedItemSection;
    :cond_0
    iput-object v2, p0, Lcom/android/dx/dex/file/CallSiteIdItem;->data:Lcom/android/dx/dex/file/CallSiteItem;

    .line 71
    return-void
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 87
    move-object v0, p1

    check-cast v0, Lcom/android/dx/dex/file/CallSiteIdItem;

    .line 88
    .local v0, "other":Lcom/android/dx/dex/file/CallSiteIdItem;
    iget-object v1, p0, Lcom/android/dx/dex/file/CallSiteIdItem;->invokeDynamicRef:Lcom/android/dx/rop/cst/CstCallSiteRef;

    iget-object v2, v0, Lcom/android/dx/dex/file/CallSiteIdItem;->invokeDynamicRef:Lcom/android/dx/rop/cst/CstCallSiteRef;

    invoke-virtual {v1, v2}, Lcom/android/dx/rop/cst/CstCallSiteRef;->compareTo(Lcom/android/dx/rop/cst/Constant;)I

    move-result v1

    return v1
.end method

.method public itemType()Lcom/android/dx/dex/file/ItemType;
    .locals 1

    .line 49
    sget-object v0, Lcom/android/dx/dex/file/ItemType;->TYPE_CALL_SITE_ID_ITEM:Lcom/android/dx/dex/file/ItemType;

    return-object v0
.end method

.method public writeSize()I
    .locals 1

    .line 55
    const/4 v0, 0x4

    return v0
.end method

.method public writeTo(Lcom/android/dx/dex/file/DexFile;Lcom/android/dx/util/AnnotatedOutput;)V
    .locals 3
    .param p1, "file"    # Lcom/android/dx/dex/file/DexFile;
    .param p2, "out"    # Lcom/android/dx/util/AnnotatedOutput;

    .line 76
    iget-object v0, p0, Lcom/android/dx/dex/file/CallSiteIdItem;->data:Lcom/android/dx/dex/file/CallSiteItem;

    invoke-virtual {v0}, Lcom/android/dx/dex/file/CallSiteItem;->getAbsoluteOffset()I

    move-result v0

    .line 77
    .local v0, "offset":I
    invoke-interface {p2}, Lcom/android/dx/util/AnnotatedOutput;->annotates()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 78
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/dx/dex/file/CallSiteIdItem;->indexString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/dx/dex/file/CallSiteIdItem;->invokeDynamicRef:Lcom/android/dx/rop/cst/CstCallSiteRef;

    invoke-virtual {v2}, Lcom/android/dx/rop/cst/CstCallSiteRef;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p2, v2, v1}, Lcom/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 79
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "call_site_off: "

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

    .line 81
    :cond_0
    invoke-interface {p2, v0}, Lcom/android/dx/util/AnnotatedOutput;->writeInt(I)V

    .line 82
    return-void
.end method
