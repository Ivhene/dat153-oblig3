.class public final Lcom/android/dx/dex/file/CallSiteItem;
.super Lcom/android/dx/dex/file/OffsettedItem;
.source "CallSiteItem.java"


# instance fields
.field private encodedForm:[B

.field private final value:Lcom/android/dx/rop/cst/CstCallSite;


# direct methods
.method public constructor <init>(Lcom/android/dx/rop/cst/CstCallSite;)V
    .locals 2
    .param p1, "value"    # Lcom/android/dx/rop/cst/CstCallSite;

    .line 39
    const/4 v0, 0x1

    invoke-static {p1}, Lcom/android/dx/dex/file/CallSiteItem;->writeSize(Lcom/android/dx/rop/cst/CstCallSite;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/dx/dex/file/OffsettedItem;-><init>(II)V

    .line 41
    iput-object p1, p0, Lcom/android/dx/dex/file/CallSiteItem;->value:Lcom/android/dx/rop/cst/CstCallSite;

    .line 42
    return-void
.end method

.method private static writeSize(Lcom/android/dx/rop/cst/CstCallSite;)I
    .locals 1
    .param p0, "value"    # Lcom/android/dx/rop/cst/CstCallSite;

    .line 51
    const/4 v0, -0x1

    return v0
.end method


# virtual methods
.method public addContents(Lcom/android/dx/dex/file/DexFile;)V
    .locals 1
    .param p1, "file"    # Lcom/android/dx/dex/file/DexFile;

    .line 103
    iget-object v0, p0, Lcom/android/dx/dex/file/CallSiteItem;->value:Lcom/android/dx/rop/cst/CstCallSite;

    invoke-static {p1, v0}, Lcom/android/dx/dex/file/ValueEncoder;->addContents(Lcom/android/dx/dex/file/DexFile;Lcom/android/dx/rop/cst/Constant;)V

    .line 104
    return-void
.end method

.method public itemType()Lcom/android/dx/dex/file/ItemType;
    .locals 1

    .line 97
    sget-object v0, Lcom/android/dx/dex/file/ItemType;->TYPE_ENCODED_ARRAY_ITEM:Lcom/android/dx/dex/file/ItemType;

    return-object v0
.end method

.method protected place0(Lcom/android/dx/dex/file/Section;I)V
    .locals 4
    .param p1, "addedTo"    # Lcom/android/dx/dex/file/Section;
    .param p2, "offset"    # I

    .line 59
    new-instance v0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;

    invoke-direct {v0}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;-><init>()V

    .line 60
    .local v0, "out":Lcom/android/dx/util/ByteArrayAnnotatedOutput;
    new-instance v1, Lcom/android/dx/dex/file/ValueEncoder;

    invoke-virtual {p1}, Lcom/android/dx/dex/file/Section;->getFile()Lcom/android/dx/dex/file/DexFile;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/android/dx/dex/file/ValueEncoder;-><init>(Lcom/android/dx/dex/file/DexFile;Lcom/android/dx/util/AnnotatedOutput;)V

    .line 62
    .local v1, "encoder":Lcom/android/dx/dex/file/ValueEncoder;
    iget-object v2, p0, Lcom/android/dx/dex/file/CallSiteItem;->value:Lcom/android/dx/rop/cst/CstCallSite;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/dx/dex/file/ValueEncoder;->writeArray(Lcom/android/dx/rop/cst/CstArray;Z)V

    .line 63
    invoke-virtual {v0}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->toByteArray()[B

    move-result-object v2

    iput-object v2, p0, Lcom/android/dx/dex/file/CallSiteItem;->encodedForm:[B

    .line 64
    array-length v2, v2

    invoke-virtual {p0, v2}, Lcom/android/dx/dex/file/CallSiteItem;->setWriteSize(I)V

    .line 65
    return-void
.end method

.method public toHuman()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/android/dx/dex/file/CallSiteItem;->value:Lcom/android/dx/rop/cst/CstCallSite;

    invoke-virtual {v0}, Lcom/android/dx/rop/cst/CstCallSite;->toHuman()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/android/dx/dex/file/CallSiteItem;->value:Lcom/android/dx/rop/cst/CstCallSite;

    invoke-virtual {v0}, Lcom/android/dx/rop/cst/CstCallSite;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected writeTo0(Lcom/android/dx/dex/file/DexFile;Lcom/android/dx/util/AnnotatedOutput;)V
    .locals 3
    .param p1, "file"    # Lcom/android/dx/dex/file/DexFile;
    .param p2, "out"    # Lcom/android/dx/util/AnnotatedOutput;

    .line 82
    invoke-interface {p2}, Lcom/android/dx/util/AnnotatedOutput;->annotates()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/dx/dex/file/CallSiteItem;->offsetString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " call site"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p2, v1, v0}, Lcom/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 84
    new-instance v0, Lcom/android/dx/dex/file/ValueEncoder;

    invoke-direct {v0, p1, p2}, Lcom/android/dx/dex/file/ValueEncoder;-><init>(Lcom/android/dx/dex/file/DexFile;Lcom/android/dx/util/AnnotatedOutput;)V

    .line 85
    .local v0, "encoder":Lcom/android/dx/dex/file/ValueEncoder;
    iget-object v1, p0, Lcom/android/dx/dex/file/CallSiteItem;->value:Lcom/android/dx/rop/cst/CstCallSite;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/dx/dex/file/ValueEncoder;->writeArray(Lcom/android/dx/rop/cst/CstArray;Z)V

    .line 86
    .end local v0    # "encoder":Lcom/android/dx/dex/file/ValueEncoder;
    goto :goto_0

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/android/dx/dex/file/CallSiteItem;->encodedForm:[B

    invoke-interface {p2, v0}, Lcom/android/dx/util/AnnotatedOutput;->write([B)V

    .line 89
    :goto_0
    return-void
.end method
