.class public final Lcom/android/dx/dex/file/DexFile;
.super Ljava/lang/Object;
.source "DexFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dx/dex/file/DexFile$Storage;
    }
.end annotation


# instance fields
.field private final byteData:Lcom/android/dx/dex/file/MixedItemSection;

.field private final callSiteIds:Lcom/android/dx/dex/file/CallSiteIdsSection;

.field private final classData:Lcom/android/dx/dex/file/MixedItemSection;

.field private final classDefs:Lcom/android/dx/dex/file/ClassDefsSection;

.field private final dexOptions:Lcom/android/dx/dex/DexOptions;

.field private dumpWidth:I

.field private final fieldIds:Lcom/android/dx/dex/file/FieldIdsSection;

.field private fileSize:I

.field private final header:Lcom/android/dx/dex/file/HeaderSection;

.field private final map:Lcom/android/dx/dex/file/MixedItemSection;

.field private final methodHandles:Lcom/android/dx/dex/file/MethodHandlesSection;

.field private final methodIds:Lcom/android/dx/dex/file/MethodIdsSection;

.field private final protoIds:Lcom/android/dx/dex/file/ProtoIdsSection;

.field private final sections:[Lcom/android/dx/dex/file/Section;

.field private final stringData:Lcom/android/dx/dex/file/MixedItemSection;

.field private final stringIds:Lcom/android/dx/dex/file/StringIdsSection;

.field private final typeIds:Lcom/android/dx/dex/file/TypeIdsSection;

.field private final typeLists:Lcom/android/dx/dex/file/MixedItemSection;

.field private final wordData:Lcom/android/dx/dex/file/MixedItemSection;


# direct methods
.method public constructor <init>(Lcom/android/dx/dex/DexOptions;)V
    .locals 28
    .param p1, "dexOptions"    # Lcom/android/dx/dex/DexOptions;

    .line 122
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 123
    iput-object v1, v0, Lcom/android/dx/dex/file/DexFile;->dexOptions:Lcom/android/dx/dex/DexOptions;

    .line 125
    new-instance v2, Lcom/android/dx/dex/file/HeaderSection;

    invoke-direct {v2, v0}, Lcom/android/dx/dex/file/HeaderSection;-><init>(Lcom/android/dx/dex/file/DexFile;)V

    iput-object v2, v0, Lcom/android/dx/dex/file/DexFile;->header:Lcom/android/dx/dex/file/HeaderSection;

    .line 126
    new-instance v3, Lcom/android/dx/dex/file/MixedItemSection;

    sget-object v4, Lcom/android/dx/dex/file/MixedItemSection$SortType;->NONE:Lcom/android/dx/dex/file/MixedItemSection$SortType;

    const/4 v5, 0x0

    const/4 v6, 0x4

    invoke-direct {v3, v5, v0, v6, v4}, Lcom/android/dx/dex/file/MixedItemSection;-><init>(Ljava/lang/String;Lcom/android/dx/dex/file/DexFile;ILcom/android/dx/dex/file/MixedItemSection$SortType;)V

    iput-object v3, v0, Lcom/android/dx/dex/file/DexFile;->typeLists:Lcom/android/dx/dex/file/MixedItemSection;

    .line 127
    new-instance v4, Lcom/android/dx/dex/file/MixedItemSection;

    const-string v7, "word_data"

    sget-object v8, Lcom/android/dx/dex/file/MixedItemSection$SortType;->TYPE:Lcom/android/dx/dex/file/MixedItemSection$SortType;

    invoke-direct {v4, v7, v0, v6, v8}, Lcom/android/dx/dex/file/MixedItemSection;-><init>(Ljava/lang/String;Lcom/android/dx/dex/file/DexFile;ILcom/android/dx/dex/file/MixedItemSection$SortType;)V

    iput-object v4, v0, Lcom/android/dx/dex/file/DexFile;->wordData:Lcom/android/dx/dex/file/MixedItemSection;

    .line 128
    new-instance v7, Lcom/android/dx/dex/file/MixedItemSection;

    sget-object v8, Lcom/android/dx/dex/file/MixedItemSection$SortType;->INSTANCE:Lcom/android/dx/dex/file/MixedItemSection$SortType;

    const-string v9, "string_data"

    const/4 v10, 0x1

    invoke-direct {v7, v9, v0, v10, v8}, Lcom/android/dx/dex/file/MixedItemSection;-><init>(Ljava/lang/String;Lcom/android/dx/dex/file/DexFile;ILcom/android/dx/dex/file/MixedItemSection$SortType;)V

    iput-object v7, v0, Lcom/android/dx/dex/file/DexFile;->stringData:Lcom/android/dx/dex/file/MixedItemSection;

    .line 130
    new-instance v8, Lcom/android/dx/dex/file/MixedItemSection;

    sget-object v9, Lcom/android/dx/dex/file/MixedItemSection$SortType;->NONE:Lcom/android/dx/dex/file/MixedItemSection$SortType;

    invoke-direct {v8, v5, v0, v10, v9}, Lcom/android/dx/dex/file/MixedItemSection;-><init>(Ljava/lang/String;Lcom/android/dx/dex/file/DexFile;ILcom/android/dx/dex/file/MixedItemSection$SortType;)V

    iput-object v8, v0, Lcom/android/dx/dex/file/DexFile;->classData:Lcom/android/dx/dex/file/MixedItemSection;

    .line 131
    new-instance v9, Lcom/android/dx/dex/file/MixedItemSection;

    const-string v11, "byte_data"

    sget-object v12, Lcom/android/dx/dex/file/MixedItemSection$SortType;->TYPE:Lcom/android/dx/dex/file/MixedItemSection$SortType;

    invoke-direct {v9, v11, v0, v10, v12}, Lcom/android/dx/dex/file/MixedItemSection;-><init>(Ljava/lang/String;Lcom/android/dx/dex/file/DexFile;ILcom/android/dx/dex/file/MixedItemSection$SortType;)V

    iput-object v9, v0, Lcom/android/dx/dex/file/DexFile;->byteData:Lcom/android/dx/dex/file/MixedItemSection;

    .line 132
    new-instance v11, Lcom/android/dx/dex/file/StringIdsSection;

    invoke-direct {v11, v0}, Lcom/android/dx/dex/file/StringIdsSection;-><init>(Lcom/android/dx/dex/file/DexFile;)V

    iput-object v11, v0, Lcom/android/dx/dex/file/DexFile;->stringIds:Lcom/android/dx/dex/file/StringIdsSection;

    .line 133
    new-instance v12, Lcom/android/dx/dex/file/TypeIdsSection;

    invoke-direct {v12, v0}, Lcom/android/dx/dex/file/TypeIdsSection;-><init>(Lcom/android/dx/dex/file/DexFile;)V

    iput-object v12, v0, Lcom/android/dx/dex/file/DexFile;->typeIds:Lcom/android/dx/dex/file/TypeIdsSection;

    .line 134
    new-instance v13, Lcom/android/dx/dex/file/ProtoIdsSection;

    invoke-direct {v13, v0}, Lcom/android/dx/dex/file/ProtoIdsSection;-><init>(Lcom/android/dx/dex/file/DexFile;)V

    iput-object v13, v0, Lcom/android/dx/dex/file/DexFile;->protoIds:Lcom/android/dx/dex/file/ProtoIdsSection;

    .line 135
    new-instance v14, Lcom/android/dx/dex/file/FieldIdsSection;

    invoke-direct {v14, v0}, Lcom/android/dx/dex/file/FieldIdsSection;-><init>(Lcom/android/dx/dex/file/DexFile;)V

    iput-object v14, v0, Lcom/android/dx/dex/file/DexFile;->fieldIds:Lcom/android/dx/dex/file/FieldIdsSection;

    .line 136
    new-instance v15, Lcom/android/dx/dex/file/MethodIdsSection;

    invoke-direct {v15, v0}, Lcom/android/dx/dex/file/MethodIdsSection;-><init>(Lcom/android/dx/dex/file/DexFile;)V

    iput-object v15, v0, Lcom/android/dx/dex/file/DexFile;->methodIds:Lcom/android/dx/dex/file/MethodIdsSection;

    .line 137
    new-instance v5, Lcom/android/dx/dex/file/ClassDefsSection;

    invoke-direct {v5, v0}, Lcom/android/dx/dex/file/ClassDefsSection;-><init>(Lcom/android/dx/dex/file/DexFile;)V

    iput-object v5, v0, Lcom/android/dx/dex/file/DexFile;->classDefs:Lcom/android/dx/dex/file/ClassDefsSection;

    .line 138
    new-instance v10, Lcom/android/dx/dex/file/MixedItemSection;

    move-object/from16 v16, v8

    const-string v8, "map"

    move-object/from16 v17, v9

    sget-object v9, Lcom/android/dx/dex/file/MixedItemSection$SortType;->NONE:Lcom/android/dx/dex/file/MixedItemSection$SortType;

    invoke-direct {v10, v8, v0, v6, v9}, Lcom/android/dx/dex/file/MixedItemSection;-><init>(Ljava/lang/String;Lcom/android/dx/dex/file/DexFile;ILcom/android/dx/dex/file/MixedItemSection$SortType;)V

    iput-object v10, v0, Lcom/android/dx/dex/file/DexFile;->map:Lcom/android/dx/dex/file/MixedItemSection;

    .line 144
    const/16 v8, 0x1a

    invoke-virtual {v1, v8}, Lcom/android/dx/dex/DexOptions;->apiIsSupported(I)Z

    move-result v8

    const/16 v18, 0xb

    const/16 v19, 0xa

    const/16 v20, 0x9

    const/16 v21, 0x8

    const/16 v22, 0x7

    const/16 v23, 0x6

    const/16 v24, 0x5

    const/16 v25, 0x3

    const/16 v26, 0x2

    const/16 v27, 0x0

    if-eqz v8, :cond_0

    .line 151
    new-instance v8, Lcom/android/dx/dex/file/CallSiteIdsSection;

    invoke-direct {v8, v0}, Lcom/android/dx/dex/file/CallSiteIdsSection;-><init>(Lcom/android/dx/dex/file/DexFile;)V

    iput-object v8, v0, Lcom/android/dx/dex/file/DexFile;->callSiteIds:Lcom/android/dx/dex/file/CallSiteIdsSection;

    .line 152
    new-instance v9, Lcom/android/dx/dex/file/MethodHandlesSection;

    invoke-direct {v9, v0}, Lcom/android/dx/dex/file/MethodHandlesSection;-><init>(Lcom/android/dx/dex/file/DexFile;)V

    iput-object v9, v0, Lcom/android/dx/dex/file/DexFile;->methodHandles:Lcom/android/dx/dex/file/MethodHandlesSection;

    .line 154
    const/16 v6, 0xf

    new-array v6, v6, [Lcom/android/dx/dex/file/Section;

    aput-object v2, v6, v27

    const/4 v2, 0x1

    aput-object v11, v6, v2

    aput-object v12, v6, v26

    aput-object v13, v6, v25

    const/4 v2, 0x4

    aput-object v14, v6, v2

    aput-object v15, v6, v24

    aput-object v5, v6, v23

    aput-object v8, v6, v22

    aput-object v9, v6, v21

    aput-object v4, v6, v20

    aput-object v3, v6, v19

    aput-object v7, v6, v18

    const/16 v2, 0xc

    aput-object v17, v6, v2

    const/16 v8, 0xd

    aput-object v16, v6, v8

    const/16 v2, 0xe

    aput-object v10, v6, v2

    iput-object v6, v0, Lcom/android/dx/dex/file/DexFile;->sections:[Lcom/android/dx/dex/file/Section;

    goto :goto_0

    .line 159
    :cond_0
    const/16 v8, 0xd

    const/4 v6, 0x0

    iput-object v6, v0, Lcom/android/dx/dex/file/DexFile;->callSiteIds:Lcom/android/dx/dex/file/CallSiteIdsSection;

    .line 160
    iput-object v6, v0, Lcom/android/dx/dex/file/DexFile;->methodHandles:Lcom/android/dx/dex/file/MethodHandlesSection;

    .line 162
    new-array v6, v8, [Lcom/android/dx/dex/file/Section;

    aput-object v2, v6, v27

    const/4 v2, 0x1

    aput-object v11, v6, v2

    aput-object v12, v6, v26

    aput-object v13, v6, v25

    const/4 v2, 0x4

    aput-object v14, v6, v2

    aput-object v15, v6, v24

    aput-object v5, v6, v23

    aput-object v4, v6, v22

    aput-object v3, v6, v21

    aput-object v7, v6, v20

    aput-object v17, v6, v19

    aput-object v16, v6, v18

    const/16 v2, 0xc

    aput-object v10, v6, v2

    iput-object v6, v0, Lcom/android/dx/dex/file/DexFile;->sections:[Lcom/android/dx/dex/file/Section;

    .line 167
    :goto_0
    const/4 v2, -0x1

    iput v2, v0, Lcom/android/dx/dex/file/DexFile;->fileSize:I

    .line 168
    const/16 v2, 0x4f

    iput v2, v0, Lcom/android/dx/dex/file/DexFile;->dumpWidth:I

    .line 169
    return-void
.end method

.method private static calcChecksum([BI)V
    .locals 4
    .param p0, "bytes"    # [B
    .param p1, "len"    # I

    .line 794
    new-instance v0, Ljava/util/zip/Adler32;

    invoke-direct {v0}, Ljava/util/zip/Adler32;-><init>()V

    .line 796
    .local v0, "a32":Ljava/util/zip/Adler32;
    add-int/lit8 v1, p1, -0xc

    const/16 v2, 0xc

    invoke-virtual {v0, p0, v2, v1}, Ljava/util/zip/Adler32;->update([BII)V

    .line 798
    invoke-virtual {v0}, Ljava/util/zip/Adler32;->getValue()J

    move-result-wide v1

    long-to-int v1, v1

    .line 800
    .local v1, "sum":I
    const/16 v2, 0x8

    int-to-byte v3, v1

    aput-byte v3, p0, v2

    .line 801
    shr-int/lit8 v2, v1, 0x8

    int-to-byte v2, v2

    const/16 v3, 0x9

    aput-byte v2, p0, v3

    .line 802
    shr-int/lit8 v2, v1, 0x10

    int-to-byte v2, v2

    const/16 v3, 0xa

    aput-byte v2, p0, v3

    .line 803
    shr-int/lit8 v2, v1, 0x18

    int-to-byte v2, v2

    const/16 v3, 0xb

    aput-byte v2, p0, v3

    .line 804
    return-void
.end method

.method private static calcSignature([BI)V
    .locals 5
    .param p0, "bytes"    # [B
    .param p1, "len"    # I

    .line 768
    :try_start_0
    const-string v0, "SHA-1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1

    .line 771
    .local v0, "md":Ljava/security/MessageDigest;
    nop

    .line 773
    add-int/lit8 v1, p1, -0x20

    const/16 v2, 0x20

    invoke-virtual {v0, p0, v2, v1}, Ljava/security/MessageDigest;->update([BII)V

    .line 776
    const/16 v1, 0xc

    const/16 v2, 0x14

    :try_start_1
    invoke-virtual {v0, p0, v1, v2}, Ljava/security/MessageDigest;->digest([BII)I

    move-result v1

    .line 777
    .local v1, "amt":I
    if-ne v1, v2, :cond_0

    .line 783
    .end local v1    # "amt":I
    nop

    .line 784
    return-void

    .line 778
    .restart local v1    # "amt":I
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unexpected digest write: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bytes"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v0    # "md":Ljava/security/MessageDigest;
    .end local p0    # "bytes":[B
    .end local p1    # "len":I
    throw v2
    :try_end_1
    .catch Ljava/security/DigestException; {:try_start_1 .. :try_end_1} :catch_0

    .line 781
    .end local v1    # "amt":I
    .restart local v0    # "md":Ljava/security/MessageDigest;
    .restart local p0    # "bytes":[B
    .restart local p1    # "len":I
    :catch_0
    move-exception v1

    .line 782
    .local v1, "ex":Ljava/security/DigestException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 769
    .end local v0    # "md":Ljava/security/MessageDigest;
    .end local v1    # "ex":Ljava/security/DigestException;
    :catch_1
    move-exception v0

    .line 770
    .local v0, "ex":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private toDex0(ZZLcom/android/dx/dex/file/DexFile$Storage;)Lcom/android/dx/util/ByteArrayAnnotatedOutput;
    .locals 11
    .param p1, "annotate"    # Z
    .param p2, "verbose"    # Z
    .param p3, "storage"    # Lcom/android/dx/dex/file/DexFile$Storage;

    .line 619
    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->classDefs:Lcom/android/dx/dex/file/ClassDefsSection;

    invoke-virtual {v0}, Lcom/android/dx/dex/file/ClassDefsSection;->prepare()V

    .line 620
    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->classData:Lcom/android/dx/dex/file/MixedItemSection;

    invoke-virtual {v0}, Lcom/android/dx/dex/file/MixedItemSection;->prepare()V

    .line 621
    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->wordData:Lcom/android/dx/dex/file/MixedItemSection;

    invoke-virtual {v0}, Lcom/android/dx/dex/file/MixedItemSection;->prepare()V

    .line 622
    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->dexOptions:Lcom/android/dx/dex/DexOptions;

    const/16 v1, 0x1a

    invoke-virtual {v0, v1}, Lcom/android/dx/dex/DexOptions;->apiIsSupported(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 624
    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->callSiteIds:Lcom/android/dx/dex/file/CallSiteIdsSection;

    invoke-virtual {v0}, Lcom/android/dx/dex/file/CallSiteIdsSection;->prepare()V

    .line 626
    :cond_0
    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->byteData:Lcom/android/dx/dex/file/MixedItemSection;

    invoke-virtual {v0}, Lcom/android/dx/dex/file/MixedItemSection;->prepare()V

    .line 627
    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->dexOptions:Lcom/android/dx/dex/DexOptions;

    invoke-virtual {v0, v1}, Lcom/android/dx/dex/DexOptions;->apiIsSupported(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 629
    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->methodHandles:Lcom/android/dx/dex/file/MethodHandlesSection;

    invoke-virtual {v0}, Lcom/android/dx/dex/file/MethodHandlesSection;->prepare()V

    .line 631
    :cond_1
    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->methodIds:Lcom/android/dx/dex/file/MethodIdsSection;

    invoke-virtual {v0}, Lcom/android/dx/dex/file/MethodIdsSection;->prepare()V

    .line 632
    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->fieldIds:Lcom/android/dx/dex/file/FieldIdsSection;

    invoke-virtual {v0}, Lcom/android/dx/dex/file/FieldIdsSection;->prepare()V

    .line 633
    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->protoIds:Lcom/android/dx/dex/file/ProtoIdsSection;

    invoke-virtual {v0}, Lcom/android/dx/dex/file/ProtoIdsSection;->prepare()V

    .line 634
    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->typeLists:Lcom/android/dx/dex/file/MixedItemSection;

    invoke-virtual {v0}, Lcom/android/dx/dex/file/MixedItemSection;->prepare()V

    .line 635
    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->typeIds:Lcom/android/dx/dex/file/TypeIdsSection;

    invoke-virtual {v0}, Lcom/android/dx/dex/file/TypeIdsSection;->prepare()V

    .line 636
    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->stringIds:Lcom/android/dx/dex/file/StringIdsSection;

    invoke-virtual {v0}, Lcom/android/dx/dex/file/StringIdsSection;->prepare()V

    .line 637
    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->stringData:Lcom/android/dx/dex/file/MixedItemSection;

    invoke-virtual {v0}, Lcom/android/dx/dex/file/MixedItemSection;->prepare()V

    .line 638
    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->header:Lcom/android/dx/dex/file/HeaderSection;

    invoke-virtual {v0}, Lcom/android/dx/dex/file/HeaderSection;->prepare()V

    .line 642
    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->sections:[Lcom/android/dx/dex/file/Section;

    array-length v0, v0

    .line 643
    .local v0, "count":I
    const/4 v1, 0x0

    .line 645
    .local v1, "offset":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const-string v3, "...while writing section "

    if-ge v2, v0, :cond_7

    .line 646
    iget-object v4, p0, Lcom/android/dx/dex/file/DexFile;->sections:[Lcom/android/dx/dex/file/Section;

    aget-object v4, v4, v2

    .line 647
    .local v4, "one":Lcom/android/dx/dex/file/Section;
    iget-object v5, p0, Lcom/android/dx/dex/file/DexFile;->callSiteIds:Lcom/android/dx/dex/file/CallSiteIdsSection;

    if-eq v4, v5, :cond_2

    iget-object v5, p0, Lcom/android/dx/dex/file/DexFile;->methodHandles:Lcom/android/dx/dex/file/MethodHandlesSection;

    if-ne v4, v5, :cond_3

    :cond_2
    invoke-virtual {v4}, Lcom/android/dx/dex/file/Section;->items()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 653
    goto :goto_1

    .line 656
    :cond_3
    invoke-virtual {v4, v1}, Lcom/android/dx/dex/file/Section;->setFileOffset(I)I

    move-result v5

    .line 657
    .local v5, "placedAt":I
    if-lt v5, v1, :cond_6

    .line 662
    :try_start_0
    iget-object v6, p0, Lcom/android/dx/dex/file/DexFile;->map:Lcom/android/dx/dex/file/MixedItemSection;

    if-ne v4, v6, :cond_4

    .line 668
    iget-object v7, p0, Lcom/android/dx/dex/file/DexFile;->sections:[Lcom/android/dx/dex/file/Section;

    invoke-static {v7, v6}, Lcom/android/dx/dex/file/MapItem;->addMap([Lcom/android/dx/dex/file/Section;Lcom/android/dx/dex/file/MixedItemSection;)V

    .line 669
    iget-object v6, p0, Lcom/android/dx/dex/file/DexFile;->map:Lcom/android/dx/dex/file/MixedItemSection;

    invoke-virtual {v6}, Lcom/android/dx/dex/file/MixedItemSection;->prepare()V

    .line 672
    :cond_4
    instance-of v6, v4, Lcom/android/dx/dex/file/MixedItemSection;

    if-eqz v6, :cond_5

    .line 677
    move-object v6, v4

    check-cast v6, Lcom/android/dx/dex/file/MixedItemSection;

    invoke-virtual {v6}, Lcom/android/dx/dex/file/MixedItemSection;->placeItems()V

    .line 680
    :cond_5
    invoke-virtual {v4}, Lcom/android/dx/dex/file/Section;->writeSize()I

    move-result v3
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v3, v5

    .line 684
    .end local v1    # "offset":I
    .local v3, "offset":I
    move v1, v3

    .line 645
    .end local v3    # "offset":I
    .end local v4    # "one":Lcom/android/dx/dex/file/Section;
    .end local v5    # "placedAt":I
    .restart local v1    # "offset":I
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 681
    .restart local v4    # "one":Lcom/android/dx/dex/file/Section;
    .restart local v5    # "placedAt":I
    :catch_0
    move-exception v6

    .line 682
    .local v6, "ex":Ljava/lang/RuntimeException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/android/dex/util/ExceptionWithContext;->withContext(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/android/dex/util/ExceptionWithContext;

    move-result-object v3

    throw v3

    .line 658
    .end local v6    # "ex":Ljava/lang/RuntimeException;
    :cond_6
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "bogus placement for section "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 689
    .end local v2    # "i":I
    .end local v4    # "one":Lcom/android/dx/dex/file/Section;
    .end local v5    # "placedAt":I
    :cond_7
    iput v1, p0, Lcom/android/dx/dex/file/DexFile;->fileSize:I

    .line 690
    if-nez p3, :cond_8

    new-array v2, v1, [B

    goto :goto_2

    :cond_8
    invoke-virtual {p3, v1}, Lcom/android/dx/dex/file/DexFile$Storage;->getStorage(I)[B

    move-result-object v2

    .line 692
    .local v2, "barr":[B
    :goto_2
    new-instance v4, Lcom/android/dx/util/ByteArrayAnnotatedOutput;

    invoke-direct {v4, v2}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;-><init>([B)V

    .line 694
    .local v4, "out":Lcom/android/dx/util/ByteArrayAnnotatedOutput;
    if-eqz p1, :cond_9

    .line 695
    iget v5, p0, Lcom/android/dx/dex/file/DexFile;->dumpWidth:I

    invoke-virtual {v4, v5, p2}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->enableAnnotations(IZ)V

    .line 698
    :cond_9
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_3
    if-ge v5, v0, :cond_e

    .line 700
    :try_start_1
    iget-object v6, p0, Lcom/android/dx/dex/file/DexFile;->sections:[Lcom/android/dx/dex/file/Section;

    aget-object v6, v6, v5

    .line 701
    .local v6, "one":Lcom/android/dx/dex/file/Section;
    iget-object v7, p0, Lcom/android/dx/dex/file/DexFile;->callSiteIds:Lcom/android/dx/dex/file/CallSiteIdsSection;

    if-eq v6, v7, :cond_a

    iget-object v7, p0, Lcom/android/dx/dex/file/DexFile;->methodHandles:Lcom/android/dx/dex/file/MethodHandlesSection;

    if-ne v6, v7, :cond_b

    :cond_a
    invoke-virtual {v6}, Lcom/android/dx/dex/file/Section;->items()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 702
    goto :goto_4

    .line 704
    :cond_b
    invoke-virtual {v6}, Lcom/android/dx/dex/file/Section;->getFileOffset()I

    move-result v7

    invoke-virtual {v4}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->getCursor()I

    move-result v8

    sub-int/2addr v7, v8

    .line 705
    .local v7, "zeroCount":I
    if-ltz v7, :cond_c

    .line 709
    invoke-virtual {v4, v7}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->writeZeroes(I)V

    .line 710
    invoke-virtual {v6, v4}, Lcom/android/dx/dex/file/Section;->writeTo(Lcom/android/dx/util/AnnotatedOutput;)V

    .line 720
    .end local v6    # "one":Lcom/android/dx/dex/file/Section;
    .end local v7    # "zeroCount":I
    nop

    .line 698
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 706
    .restart local v6    # "one":Lcom/android/dx/dex/file/Section;
    .restart local v7    # "zeroCount":I
    :cond_c
    new-instance v8, Lcom/android/dex/util/ExceptionWithContext;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "excess write of "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    neg-int v10, v7

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/android/dex/util/ExceptionWithContext;-><init>(Ljava/lang/String;)V

    .end local v0    # "count":I
    .end local v1    # "offset":I
    .end local v2    # "barr":[B
    .end local v4    # "out":Lcom/android/dx/util/ByteArrayAnnotatedOutput;
    .end local v5    # "i":I
    .end local p1    # "annotate":Z
    .end local p2    # "verbose":Z
    .end local p3    # "storage":Lcom/android/dx/dex/file/DexFile$Storage;
    throw v8
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 711
    .end local v6    # "one":Lcom/android/dx/dex/file/Section;
    .end local v7    # "zeroCount":I
    .restart local v0    # "count":I
    .restart local v1    # "offset":I
    .restart local v2    # "barr":[B
    .restart local v4    # "out":Lcom/android/dx/util/ByteArrayAnnotatedOutput;
    .restart local v5    # "i":I
    .restart local p1    # "annotate":Z
    .restart local p2    # "verbose":Z
    .restart local p3    # "storage":Lcom/android/dx/dex/file/DexFile$Storage;
    :catch_1
    move-exception v6

    .line 713
    .local v6, "ex":Ljava/lang/RuntimeException;
    instance-of v7, v6, Lcom/android/dex/util/ExceptionWithContext;

    if-eqz v7, :cond_d

    .line 714
    move-object v7, v6

    check-cast v7, Lcom/android/dex/util/ExceptionWithContext;

    .local v7, "ec":Lcom/android/dex/util/ExceptionWithContext;
    goto :goto_5

    .line 716
    .end local v7    # "ec":Lcom/android/dex/util/ExceptionWithContext;
    :cond_d
    new-instance v7, Lcom/android/dex/util/ExceptionWithContext;

    invoke-direct {v7, v6}, Lcom/android/dex/util/ExceptionWithContext;-><init>(Ljava/lang/Throwable;)V

    .line 718
    .restart local v7    # "ec":Lcom/android/dex/util/ExceptionWithContext;
    :goto_5
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Lcom/android/dex/util/ExceptionWithContext;->addContext(Ljava/lang/String;)V

    .line 719
    throw v7

    .line 723
    .end local v5    # "i":I
    .end local v6    # "ex":Ljava/lang/RuntimeException;
    .end local v7    # "ec":Lcom/android/dex/util/ExceptionWithContext;
    :cond_e
    invoke-virtual {v4}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->getCursor()I

    move-result v3

    iget v5, p0, Lcom/android/dx/dex/file/DexFile;->fileSize:I

    if-ne v3, v5, :cond_10

    .line 729
    invoke-virtual {v4}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->getCursor()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/dx/dex/file/DexFile;->calcSignature([BI)V

    .line 730
    invoke-virtual {v4}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->getCursor()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/dx/dex/file/DexFile;->calcChecksum([BI)V

    .line 732
    if-eqz p1, :cond_f

    .line 733
    iget-object v3, p0, Lcom/android/dx/dex/file/DexFile;->wordData:Lcom/android/dx/dex/file/MixedItemSection;

    sget-object v5, Lcom/android/dx/dex/file/ItemType;->TYPE_CODE_ITEM:Lcom/android/dx/dex/file/ItemType;

    const-string v6, "\nmethod code index:\n\n"

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/dx/dex/file/MixedItemSection;->writeIndexAnnotation(Lcom/android/dx/util/AnnotatedOutput;Lcom/android/dx/dex/file/ItemType;Ljava/lang/String;)V

    .line 735
    invoke-virtual {p0}, Lcom/android/dx/dex/file/DexFile;->getStatistics()Lcom/android/dx/dex/file/Statistics;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/android/dx/dex/file/Statistics;->writeAnnotation(Lcom/android/dx/util/AnnotatedOutput;)V

    .line 736
    invoke-virtual {v4}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->finishAnnotating()V

    .line 739
    :cond_f
    return-object v4

    .line 724
    :cond_10
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v5, "foreshortened write"

    invoke-direct {v3, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public add(Lcom/android/dx/dex/file/ClassDefItem;)V
    .locals 1
    .param p1, "clazz"    # Lcom/android/dx/dex/file/ClassDefItem;

    .line 192
    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->classDefs:Lcom/android/dx/dex/file/ClassDefsSection;

    invoke-virtual {v0, p1}, Lcom/android/dx/dex/file/ClassDefsSection;->add(Lcom/android/dx/dex/file/ClassDefItem;)V

    .line 193
    return-void
.end method

.method findItemOrNull(Lcom/android/dx/rop/cst/Constant;)Lcom/android/dx/dex/file/IndexedItem;
    .locals 2
    .param p1, "cst"    # Lcom/android/dx/rop/cst/Constant;

    .line 558
    instance-of v0, p1, Lcom/android/dx/rop/cst/CstString;

    if-eqz v0, :cond_0

    .line 559
    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->stringIds:Lcom/android/dx/dex/file/StringIdsSection;

    invoke-virtual {v0, p1}, Lcom/android/dx/dex/file/StringIdsSection;->get(Lcom/android/dx/rop/cst/Constant;)Lcom/android/dx/dex/file/IndexedItem;

    move-result-object v0

    return-object v0

    .line 560
    :cond_0
    instance-of v0, p1, Lcom/android/dx/rop/cst/CstType;

    if-eqz v0, :cond_1

    .line 561
    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->typeIds:Lcom/android/dx/dex/file/TypeIdsSection;

    invoke-virtual {v0, p1}, Lcom/android/dx/dex/file/TypeIdsSection;->get(Lcom/android/dx/rop/cst/Constant;)Lcom/android/dx/dex/file/IndexedItem;

    move-result-object v0

    return-object v0

    .line 562
    :cond_1
    instance-of v0, p1, Lcom/android/dx/rop/cst/CstBaseMethodRef;

    if-eqz v0, :cond_2

    .line 563
    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->methodIds:Lcom/android/dx/dex/file/MethodIdsSection;

    invoke-virtual {v0, p1}, Lcom/android/dx/dex/file/MethodIdsSection;->get(Lcom/android/dx/rop/cst/Constant;)Lcom/android/dx/dex/file/IndexedItem;

    move-result-object v0

    return-object v0

    .line 564
    :cond_2
    instance-of v0, p1, Lcom/android/dx/rop/cst/CstFieldRef;

    if-eqz v0, :cond_3

    .line 565
    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->fieldIds:Lcom/android/dx/dex/file/FieldIdsSection;

    invoke-virtual {v0, p1}, Lcom/android/dx/dex/file/FieldIdsSection;->get(Lcom/android/dx/rop/cst/Constant;)Lcom/android/dx/dex/file/IndexedItem;

    move-result-object v0

    return-object v0

    .line 566
    :cond_3
    instance-of v0, p1, Lcom/android/dx/rop/cst/CstEnumRef;

    if-eqz v0, :cond_4

    .line 567
    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->fieldIds:Lcom/android/dx/dex/file/FieldIdsSection;

    move-object v1, p1

    check-cast v1, Lcom/android/dx/rop/cst/CstEnumRef;

    invoke-virtual {v1}, Lcom/android/dx/rop/cst/CstEnumRef;->getFieldRef()Lcom/android/dx/rop/cst/CstFieldRef;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/dx/dex/file/FieldIdsSection;->intern(Lcom/android/dx/rop/cst/CstFieldRef;)Lcom/android/dx/dex/file/FieldIdItem;

    move-result-object v0

    return-object v0

    .line 568
    :cond_4
    instance-of v0, p1, Lcom/android/dx/rop/cst/CstProtoRef;

    if-eqz v0, :cond_5

    .line 569
    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->protoIds:Lcom/android/dx/dex/file/ProtoIdsSection;

    invoke-virtual {v0, p1}, Lcom/android/dx/dex/file/ProtoIdsSection;->get(Lcom/android/dx/rop/cst/Constant;)Lcom/android/dx/dex/file/IndexedItem;

    move-result-object v0

    return-object v0

    .line 570
    :cond_5
    instance-of v0, p1, Lcom/android/dx/rop/cst/CstMethodHandle;

    if-eqz v0, :cond_6

    .line 571
    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->methodHandles:Lcom/android/dx/dex/file/MethodHandlesSection;

    invoke-virtual {v0, p1}, Lcom/android/dx/dex/file/MethodHandlesSection;->get(Lcom/android/dx/rop/cst/Constant;)Lcom/android/dx/dex/file/IndexedItem;

    move-result-object v0

    return-object v0

    .line 572
    :cond_6
    instance-of v0, p1, Lcom/android/dx/rop/cst/CstCallSiteRef;

    if-eqz v0, :cond_7

    .line 573
    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->callSiteIds:Lcom/android/dx/dex/file/CallSiteIdsSection;

    invoke-virtual {v0, p1}, Lcom/android/dx/dex/file/CallSiteIdsSection;->get(Lcom/android/dx/rop/cst/Constant;)Lcom/android/dx/dex/file/IndexedItem;

    move-result-object v0

    return-object v0

    .line 575
    :cond_7
    const/4 v0, 0x0

    return-object v0
.end method

.method getByteData()Lcom/android/dx/dex/file/MixedItemSection;
    .locals 1

    .line 488
    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->byteData:Lcom/android/dx/dex/file/MixedItemSection;

    return-object v0
.end method

.method public getCallSiteIds()Lcom/android/dx/dex/file/CallSiteIdsSection;
    .locals 1

    .line 475
    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->callSiteIds:Lcom/android/dx/dex/file/CallSiteIdsSection;

    return-object v0
.end method

.method getClassData()Lcom/android/dx/dex/file/MixedItemSection;
    .locals 1

    .line 397
    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->classData:Lcom/android/dx/dex/file/MixedItemSection;

    return-object v0
.end method

.method public getClassDefs()Lcom/android/dx/dex/file/ClassDefsSection;
    .locals 1

    .line 384
    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->classDefs:Lcom/android/dx/dex/file/ClassDefsSection;

    return-object v0
.end method

.method public getClassOrNull(Ljava/lang/String;)Lcom/android/dx/dex/file/ClassDefItem;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .line 204
    :try_start_0
    invoke-static {p1}, Lcom/android/dx/rop/type/Type;->internClassName(Ljava/lang/String;)Lcom/android/dx/rop/type/Type;

    move-result-object v0

    .line 205
    .local v0, "type":Lcom/android/dx/rop/type/Type;
    iget-object v1, p0, Lcom/android/dx/dex/file/DexFile;->classDefs:Lcom/android/dx/dex/file/ClassDefsSection;

    new-instance v2, Lcom/android/dx/rop/cst/CstType;

    invoke-direct {v2, v0}, Lcom/android/dx/rop/cst/CstType;-><init>(Lcom/android/dx/rop/type/Type;)V

    invoke-virtual {v1, v2}, Lcom/android/dx/dex/file/ClassDefsSection;->get(Lcom/android/dx/rop/cst/Constant;)Lcom/android/dx/dex/file/IndexedItem;

    move-result-object v1

    check-cast v1, Lcom/android/dx/dex/file/ClassDefItem;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 206
    .end local v0    # "type":Lcom/android/dx/rop/type/Type;
    :catch_0
    move-exception v0

    .line 208
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public getDexOptions()Lcom/android/dx/dex/DexOptions;
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->dexOptions:Lcom/android/dx/dex/DexOptions;

    return-object v0
.end method

.method public getFieldIds()Lcom/android/dx/dex/file/FieldIdsSection;
    .locals 1

    .line 436
    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->fieldIds:Lcom/android/dx/dex/file/FieldIdsSection;

    return-object v0
.end method

.method public getFileSize()I
    .locals 2

    .line 303
    iget v0, p0, Lcom/android/dx/dex/file/DexFile;->fileSize:I

    if-ltz v0, :cond_0

    .line 307
    return v0

    .line 304
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "file size not yet known"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getFirstDataSection()Lcom/android/dx/dex/file/Section;
    .locals 1

    .line 501
    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->wordData:Lcom/android/dx/dex/file/MixedItemSection;

    return-object v0
.end method

.method getLastDataSection()Lcom/android/dx/dex/file/Section;
    .locals 1

    .line 514
    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->map:Lcom/android/dx/dex/file/MixedItemSection;

    return-object v0
.end method

.method getMap()Lcom/android/dx/dex/file/MixedItemSection;
    .locals 1

    .line 358
    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->map:Lcom/android/dx/dex/file/MixedItemSection;

    return-object v0
.end method

.method public getMethodHandles()Lcom/android/dx/dex/file/MethodHandlesSection;
    .locals 1

    .line 462
    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->methodHandles:Lcom/android/dx/dex/file/MethodHandlesSection;

    return-object v0
.end method

.method public getMethodIds()Lcom/android/dx/dex/file/MethodIdsSection;
    .locals 1

    .line 449
    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->methodIds:Lcom/android/dx/dex/file/MethodIdsSection;

    return-object v0
.end method

.method getProtoIds()Lcom/android/dx/dex/file/ProtoIdsSection;
    .locals 1

    .line 423
    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->protoIds:Lcom/android/dx/dex/file/ProtoIdsSection;

    return-object v0
.end method

.method public getStatistics()Lcom/android/dx/dex/file/Statistics;
    .locals 5

    .line 748
    new-instance v0, Lcom/android/dx/dex/file/Statistics;

    invoke-direct {v0}, Lcom/android/dx/dex/file/Statistics;-><init>()V

    .line 750
    .local v0, "stats":Lcom/android/dx/dex/file/Statistics;
    iget-object v1, p0, Lcom/android/dx/dex/file/DexFile;->sections:[Lcom/android/dx/dex/file/Section;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 751
    .local v4, "s":Lcom/android/dx/dex/file/Section;
    invoke-virtual {v0, v4}, Lcom/android/dx/dex/file/Statistics;->addAll(Lcom/android/dx/dex/file/Section;)V

    .line 750
    .end local v4    # "s":Lcom/android/dx/dex/file/Section;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 754
    :cond_0
    return-object v0
.end method

.method getStringData()Lcom/android/dx/dex/file/MixedItemSection;
    .locals 1

    .line 320
    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->stringData:Lcom/android/dx/dex/file/MixedItemSection;

    return-object v0
.end method

.method getStringIds()Lcom/android/dx/dex/file/StringIdsSection;
    .locals 1

    .line 371
    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->stringIds:Lcom/android/dx/dex/file/StringIdsSection;

    return-object v0
.end method

.method public getTypeIds()Lcom/android/dx/dex/file/TypeIdsSection;
    .locals 1

    .line 410
    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->typeIds:Lcom/android/dx/dex/file/TypeIdsSection;

    return-object v0
.end method

.method getTypeLists()Lcom/android/dx/dex/file/MixedItemSection;
    .locals 1

    .line 346
    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->typeLists:Lcom/android/dx/dex/file/MixedItemSection;

    return-object v0
.end method

.method getWordData()Lcom/android/dx/dex/file/MixedItemSection;
    .locals 1

    .line 333
    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->wordData:Lcom/android/dx/dex/file/MixedItemSection;

    return-object v0
.end method

.method internIfAppropriate(Lcom/android/dx/rop/cst/Constant;)V
    .locals 2
    .param p1, "cst"    # Lcom/android/dx/rop/cst/Constant;

    .line 525
    if-eqz p1, :cond_7

    .line 529
    instance-of v0, p1, Lcom/android/dx/rop/cst/CstString;

    if-eqz v0, :cond_0

    .line 530
    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->stringIds:Lcom/android/dx/dex/file/StringIdsSection;

    move-object v1, p1

    check-cast v1, Lcom/android/dx/rop/cst/CstString;

    invoke-virtual {v0, v1}, Lcom/android/dx/dex/file/StringIdsSection;->intern(Lcom/android/dx/rop/cst/CstString;)Lcom/android/dx/dex/file/StringIdItem;

    goto :goto_0

    .line 531
    :cond_0
    instance-of v0, p1, Lcom/android/dx/rop/cst/CstType;

    if-eqz v0, :cond_1

    .line 532
    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->typeIds:Lcom/android/dx/dex/file/TypeIdsSection;

    move-object v1, p1

    check-cast v1, Lcom/android/dx/rop/cst/CstType;

    invoke-virtual {v0, v1}, Lcom/android/dx/dex/file/TypeIdsSection;->intern(Lcom/android/dx/rop/cst/CstType;)Lcom/android/dx/dex/file/TypeIdItem;

    goto :goto_0

    .line 533
    :cond_1
    instance-of v0, p1, Lcom/android/dx/rop/cst/CstBaseMethodRef;

    if-eqz v0, :cond_2

    .line 534
    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->methodIds:Lcom/android/dx/dex/file/MethodIdsSection;

    move-object v1, p1

    check-cast v1, Lcom/android/dx/rop/cst/CstBaseMethodRef;

    invoke-virtual {v0, v1}, Lcom/android/dx/dex/file/MethodIdsSection;->intern(Lcom/android/dx/rop/cst/CstBaseMethodRef;)Lcom/android/dx/dex/file/MethodIdItem;

    goto :goto_0

    .line 535
    :cond_2
    instance-of v0, p1, Lcom/android/dx/rop/cst/CstFieldRef;

    if-eqz v0, :cond_3

    .line 536
    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->fieldIds:Lcom/android/dx/dex/file/FieldIdsSection;

    move-object v1, p1

    check-cast v1, Lcom/android/dx/rop/cst/CstFieldRef;

    invoke-virtual {v0, v1}, Lcom/android/dx/dex/file/FieldIdsSection;->intern(Lcom/android/dx/rop/cst/CstFieldRef;)Lcom/android/dx/dex/file/FieldIdItem;

    goto :goto_0

    .line 537
    :cond_3
    instance-of v0, p1, Lcom/android/dx/rop/cst/CstEnumRef;

    if-eqz v0, :cond_4

    .line 538
    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->fieldIds:Lcom/android/dx/dex/file/FieldIdsSection;

    move-object v1, p1

    check-cast v1, Lcom/android/dx/rop/cst/CstEnumRef;

    invoke-virtual {v1}, Lcom/android/dx/rop/cst/CstEnumRef;->getFieldRef()Lcom/android/dx/rop/cst/CstFieldRef;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/dx/dex/file/FieldIdsSection;->intern(Lcom/android/dx/rop/cst/CstFieldRef;)Lcom/android/dx/dex/file/FieldIdItem;

    goto :goto_0

    .line 539
    :cond_4
    instance-of v0, p1, Lcom/android/dx/rop/cst/CstProtoRef;

    if-eqz v0, :cond_5

    .line 540
    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->protoIds:Lcom/android/dx/dex/file/ProtoIdsSection;

    move-object v1, p1

    check-cast v1, Lcom/android/dx/rop/cst/CstProtoRef;

    invoke-virtual {v1}, Lcom/android/dx/rop/cst/CstProtoRef;->getPrototype()Lcom/android/dx/rop/type/Prototype;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/dx/dex/file/ProtoIdsSection;->intern(Lcom/android/dx/rop/type/Prototype;)Lcom/android/dx/dex/file/ProtoIdItem;

    goto :goto_0

    .line 541
    :cond_5
    instance-of v0, p1, Lcom/android/dx/rop/cst/CstMethodHandle;

    if-eqz v0, :cond_6

    .line 542
    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->methodHandles:Lcom/android/dx/dex/file/MethodHandlesSection;

    move-object v1, p1

    check-cast v1, Lcom/android/dx/rop/cst/CstMethodHandle;

    invoke-virtual {v0, v1}, Lcom/android/dx/dex/file/MethodHandlesSection;->intern(Lcom/android/dx/rop/cst/CstMethodHandle;)V

    .line 544
    :cond_6
    :goto_0
    return-void

    .line 526
    :cond_7
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "cst == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->classDefs:Lcom/android/dx/dex/file/ClassDefsSection;

    invoke-virtual {v0}, Lcom/android/dx/dex/file/ClassDefsSection;->items()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public setDumpWidth(I)V
    .locals 2
    .param p1, "dumpWidth"    # I

    .line 286
    const/16 v0, 0x28

    if-lt p1, v0, :cond_0

    .line 290
    iput p1, p0, Lcom/android/dx/dex/file/DexFile;->dumpWidth:I

    .line 291
    return-void

    .line 287
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "dumpWidth < 40"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toDex(Ljava/io/Writer;Z)[B
    .locals 3
    .param p1, "humanOut"    # Ljava/io/Writer;
    .param p2, "verbose"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 270
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 271
    .local v0, "annotate":Z
    :goto_0
    const/4 v1, 0x0

    invoke-direct {p0, v0, p2, v1}, Lcom/android/dx/dex/file/DexFile;->toDex0(ZZLcom/android/dx/dex/file/DexFile$Storage;)Lcom/android/dx/util/ByteArrayAnnotatedOutput;

    move-result-object v1

    .line 273
    .local v1, "result":Lcom/android/dx/util/ByteArrayAnnotatedOutput;
    if-eqz v0, :cond_1

    .line 274
    invoke-virtual {v1, p1}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->writeAnnotationsTo(Ljava/io/Writer;)V

    .line 277
    :cond_1
    invoke-virtual {v1}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->getArray()[B

    move-result-object v2

    return-object v2
.end method

.method public writeTo(Lcom/android/dx/dex/file/DexFile$Storage;)Lcom/android/dx/util/ByteArrayAnnotatedOutput;
    .locals 1
    .param p1, "storage"    # Lcom/android/dx/dex/file/DexFile$Storage;

    .line 256
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, p1}, Lcom/android/dx/dex/file/DexFile;->toDex0(ZZLcom/android/dx/dex/file/DexFile$Storage;)Lcom/android/dx/util/ByteArrayAnnotatedOutput;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Ljava/io/OutputStream;Lcom/android/dx/dex/file/DexFile$Storage;Ljava/io/Writer;Z)V
    .locals 3
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "storage"    # Lcom/android/dx/dex/file/DexFile$Storage;
    .param p3, "humanOut"    # Ljava/io/Writer;
    .param p4, "verbose"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 237
    if-eqz p3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 238
    .local v0, "annotate":Z
    :goto_0
    invoke-direct {p0, v0, p4, p2}, Lcom/android/dx/dex/file/DexFile;->toDex0(ZZLcom/android/dx/dex/file/DexFile$Storage;)Lcom/android/dx/util/ByteArrayAnnotatedOutput;

    move-result-object v1

    .line 240
    .local v1, "result":Lcom/android/dx/util/ByteArrayAnnotatedOutput;
    if-eqz p1, :cond_1

    .line 241
    invoke-virtual {v1}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->getArray()[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 244
    :cond_1
    if-eqz v0, :cond_2

    .line 245
    invoke-virtual {v1, p3}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->writeAnnotationsTo(Ljava/io/Writer;)V

    .line 247
    :cond_2
    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;Ljava/io/Writer;Z)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "humanOut"    # Ljava/io/Writer;
    .param p3, "verbose"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 222
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/dx/dex/file/DexFile;->writeTo(Ljava/io/OutputStream;Lcom/android/dx/dex/file/DexFile$Storage;Ljava/io/Writer;Z)V

    .line 223
    return-void
.end method
