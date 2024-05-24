.class final Lnet/bytebuddy/jar/asm/ModuleWriter;
.super Lnet/bytebuddy/jar/asm/ModuleVisitor;
.source "ModuleWriter.java"


# instance fields
.field private final exports:Lnet/bytebuddy/jar/asm/ByteVector;

.field private exportsCount:I

.field private mainClassIndex:I

.field private final moduleFlags:I

.field private final moduleNameIndex:I

.field private final moduleVersionIndex:I

.field private final opens:Lnet/bytebuddy/jar/asm/ByteVector;

.field private opensCount:I

.field private packageCount:I

.field private final packageIndex:Lnet/bytebuddy/jar/asm/ByteVector;

.field private final provides:Lnet/bytebuddy/jar/asm/ByteVector;

.field private providesCount:I

.field private final requires:Lnet/bytebuddy/jar/asm/ByteVector;

.field private requiresCount:I

.field private final symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

.field private usesCount:I

.field private final usesIndex:Lnet/bytebuddy/jar/asm/ByteVector;


# direct methods
.method constructor <init>(Lnet/bytebuddy/jar/asm/SymbolTable;III)V
    .locals 1
    .param p1, "symbolTable"    # Lnet/bytebuddy/jar/asm/SymbolTable;
    .param p2, "name"    # I
    .param p3, "access"    # I
    .param p4, "version"    # I

    .line 97
    const/high16 v0, 0x90000

    invoke-direct {p0, v0}, Lnet/bytebuddy/jar/asm/ModuleVisitor;-><init>(I)V

    .line 98
    iput-object p1, p0, Lnet/bytebuddy/jar/asm/ModuleWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    .line 99
    iput p2, p0, Lnet/bytebuddy/jar/asm/ModuleWriter;->moduleNameIndex:I

    .line 100
    iput p3, p0, Lnet/bytebuddy/jar/asm/ModuleWriter;->moduleFlags:I

    .line 101
    iput p4, p0, Lnet/bytebuddy/jar/asm/ModuleWriter;->moduleVersionIndex:I

    .line 102
    new-instance v0, Lnet/bytebuddy/jar/asm/ByteVector;

    invoke-direct {v0}, Lnet/bytebuddy/jar/asm/ByteVector;-><init>()V

    iput-object v0, p0, Lnet/bytebuddy/jar/asm/ModuleWriter;->requires:Lnet/bytebuddy/jar/asm/ByteVector;

    .line 103
    new-instance v0, Lnet/bytebuddy/jar/asm/ByteVector;

    invoke-direct {v0}, Lnet/bytebuddy/jar/asm/ByteVector;-><init>()V

    iput-object v0, p0, Lnet/bytebuddy/jar/asm/ModuleWriter;->exports:Lnet/bytebuddy/jar/asm/ByteVector;

    .line 104
    new-instance v0, Lnet/bytebuddy/jar/asm/ByteVector;

    invoke-direct {v0}, Lnet/bytebuddy/jar/asm/ByteVector;-><init>()V

    iput-object v0, p0, Lnet/bytebuddy/jar/asm/ModuleWriter;->opens:Lnet/bytebuddy/jar/asm/ByteVector;

    .line 105
    new-instance v0, Lnet/bytebuddy/jar/asm/ByteVector;

    invoke-direct {v0}, Lnet/bytebuddy/jar/asm/ByteVector;-><init>()V

    iput-object v0, p0, Lnet/bytebuddy/jar/asm/ModuleWriter;->usesIndex:Lnet/bytebuddy/jar/asm/ByteVector;

    .line 106
    new-instance v0, Lnet/bytebuddy/jar/asm/ByteVector;

    invoke-direct {v0}, Lnet/bytebuddy/jar/asm/ByteVector;-><init>()V

    iput-object v0, p0, Lnet/bytebuddy/jar/asm/ModuleWriter;->provides:Lnet/bytebuddy/jar/asm/ByteVector;

    .line 107
    new-instance v0, Lnet/bytebuddy/jar/asm/ByteVector;

    invoke-direct {v0}, Lnet/bytebuddy/jar/asm/ByteVector;-><init>()V

    iput-object v0, p0, Lnet/bytebuddy/jar/asm/ModuleWriter;->packageIndex:Lnet/bytebuddy/jar/asm/ByteVector;

    .line 108
    return-void
.end method


# virtual methods
.method computeAttributesSize()I
    .locals 3

    .line 196
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/ModuleWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    const-string v1, "Module"

    invoke-virtual {v0, v1}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    .line 198
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/ModuleWriter;->requires:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v0, v0, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    add-int/lit8 v0, v0, 0x16

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/ModuleWriter;->exports:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v1, v1, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/ModuleWriter;->opens:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v1, v1, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/ModuleWriter;->usesIndex:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v1, v1, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/ModuleWriter;->provides:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v1, v1, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    add-int/2addr v0, v1

    .line 200
    .local v0, "size":I
    iget v1, p0, Lnet/bytebuddy/jar/asm/ModuleWriter;->packageCount:I

    if-lez v1, :cond_0

    .line 201
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/ModuleWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    const-string v2, "ModulePackages"

    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    .line 203
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/ModuleWriter;->packageIndex:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v1, v1, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    add-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    .line 205
    :cond_0
    iget v1, p0, Lnet/bytebuddy/jar/asm/ModuleWriter;->mainClassIndex:I

    if-lez v1, :cond_1

    .line 206
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/ModuleWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    const-string v2, "ModuleMainClass"

    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    .line 208
    add-int/lit8 v0, v0, 0x8

    .line 210
    :cond_1
    return v0
.end method

.method getAttributeCount()I
    .locals 4

    .line 186
    iget v0, p0, Lnet/bytebuddy/jar/asm/ModuleWriter;->packageCount:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    add-int/2addr v0, v2

    iget v3, p0, Lnet/bytebuddy/jar/asm/ModuleWriter;->mainClassIndex:I

    if-lez v3, :cond_1

    move v1, v2

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method putAttributes(Lnet/bytebuddy/jar/asm/ByteVector;)V
    .locals 6
    .param p1, "output"    # Lnet/bytebuddy/jar/asm/ByteVector;

    .line 221
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/ModuleWriter;->requires:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v0, v0, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    add-int/lit8 v0, v0, 0x10

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/ModuleWriter;->exports:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v1, v1, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/ModuleWriter;->opens:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v1, v1, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/ModuleWriter;->usesIndex:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v1, v1, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/ModuleWriter;->provides:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v1, v1, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    add-int/2addr v0, v1

    .line 223
    .local v0, "moduleAttributeLength":I
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/ModuleWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    .line 224
    const-string v2, "Module"

    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v1

    .line 225
    invoke-virtual {v1, v0}, Lnet/bytebuddy/jar/asm/ByteVector;->putInt(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v1

    iget v2, p0, Lnet/bytebuddy/jar/asm/ModuleWriter;->moduleNameIndex:I

    .line 226
    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v1

    iget v2, p0, Lnet/bytebuddy/jar/asm/ModuleWriter;->moduleFlags:I

    .line 227
    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v1

    iget v2, p0, Lnet/bytebuddy/jar/asm/ModuleWriter;->moduleVersionIndex:I

    .line 228
    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v1

    iget v2, p0, Lnet/bytebuddy/jar/asm/ModuleWriter;->requiresCount:I

    .line 229
    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v1

    iget-object v2, p0, Lnet/bytebuddy/jar/asm/ModuleWriter;->requires:Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v2, v2, Lnet/bytebuddy/jar/asm/ByteVector;->data:[B

    iget-object v3, p0, Lnet/bytebuddy/jar/asm/ModuleWriter;->requires:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v3, v3, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    .line 230
    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Lnet/bytebuddy/jar/asm/ByteVector;->putByteArray([BII)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v1

    iget v2, p0, Lnet/bytebuddy/jar/asm/ModuleWriter;->exportsCount:I

    .line 231
    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v1

    iget-object v2, p0, Lnet/bytebuddy/jar/asm/ModuleWriter;->exports:Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v2, v2, Lnet/bytebuddy/jar/asm/ByteVector;->data:[B

    iget-object v3, p0, Lnet/bytebuddy/jar/asm/ModuleWriter;->exports:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v3, v3, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    .line 232
    invoke-virtual {v1, v2, v4, v3}, Lnet/bytebuddy/jar/asm/ByteVector;->putByteArray([BII)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v1

    iget v2, p0, Lnet/bytebuddy/jar/asm/ModuleWriter;->opensCount:I

    .line 233
    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v1

    iget-object v2, p0, Lnet/bytebuddy/jar/asm/ModuleWriter;->opens:Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v2, v2, Lnet/bytebuddy/jar/asm/ByteVector;->data:[B

    iget-object v3, p0, Lnet/bytebuddy/jar/asm/ModuleWriter;->opens:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v3, v3, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    .line 234
    invoke-virtual {v1, v2, v4, v3}, Lnet/bytebuddy/jar/asm/ByteVector;->putByteArray([BII)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v1

    iget v2, p0, Lnet/bytebuddy/jar/asm/ModuleWriter;->usesCount:I

    .line 235
    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v1

    iget-object v2, p0, Lnet/bytebuddy/jar/asm/ModuleWriter;->usesIndex:Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v2, v2, Lnet/bytebuddy/jar/asm/ByteVector;->data:[B

    iget-object v3, p0, Lnet/bytebuddy/jar/asm/ModuleWriter;->usesIndex:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v3, v3, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    .line 236
    invoke-virtual {v1, v2, v4, v3}, Lnet/bytebuddy/jar/asm/ByteVector;->putByteArray([BII)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v1

    iget v2, p0, Lnet/bytebuddy/jar/asm/ModuleWriter;->providesCount:I

    .line 237
    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v1

    iget-object v2, p0, Lnet/bytebuddy/jar/asm/ModuleWriter;->provides:Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v2, v2, Lnet/bytebuddy/jar/asm/ByteVector;->data:[B

    iget-object v3, p0, Lnet/bytebuddy/jar/asm/ModuleWriter;->provides:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v3, v3, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    .line 238
    invoke-virtual {v1, v2, v4, v3}, Lnet/bytebuddy/jar/asm/ByteVector;->putByteArray([BII)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 239
    iget v1, p0, Lnet/bytebuddy/jar/asm/ModuleWriter;->packageCount:I

    const/4 v2, 0x2

    if-lez v1, :cond_0

    .line 240
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/ModuleWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    .line 241
    const-string v3, "ModulePackages"

    invoke-virtual {v1, v3}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v1

    iget-object v3, p0, Lnet/bytebuddy/jar/asm/ModuleWriter;->packageIndex:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v3, v3, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    add-int/2addr v3, v2

    .line 242
    invoke-virtual {v1, v3}, Lnet/bytebuddy/jar/asm/ByteVector;->putInt(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v1

    iget v3, p0, Lnet/bytebuddy/jar/asm/ModuleWriter;->packageCount:I

    .line 243
    invoke-virtual {v1, v3}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v1

    iget-object v3, p0, Lnet/bytebuddy/jar/asm/ModuleWriter;->packageIndex:Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v3, v3, Lnet/bytebuddy/jar/asm/ByteVector;->data:[B

    iget-object v5, p0, Lnet/bytebuddy/jar/asm/ModuleWriter;->packageIndex:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v5, v5, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    .line 244
    invoke-virtual {v1, v3, v4, v5}, Lnet/bytebuddy/jar/asm/ByteVector;->putByteArray([BII)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 246
    :cond_0
    iget v1, p0, Lnet/bytebuddy/jar/asm/ModuleWriter;->mainClassIndex:I

    if-lez v1, :cond_1

    .line 247
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/ModuleWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    .line 248
    const-string v3, "ModuleMainClass"

    invoke-virtual {v1, v3}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v1

    .line 249
    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/ByteVector;->putInt(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v1

    iget v2, p0, Lnet/bytebuddy/jar/asm/ModuleWriter;->mainClassIndex:I

    .line 250
    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 252
    :cond_1
    return-void
.end method

.method public visitEnd()V
    .locals 0

    .line 177
    return-void
.end method

.method public varargs visitExport(Ljava/lang/String;I[Ljava/lang/String;)V
    .locals 5
    .param p1, "packaze"    # Ljava/lang/String;
    .param p2, "access"    # I
    .param p3, "modules"    # [Ljava/lang/String;

    .line 132
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/ModuleWriter;->exports:Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/ModuleWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    invoke-virtual {v1, p1}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantPackage(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object v1

    iget v1, v1, Lnet/bytebuddy/jar/asm/Symbol;->index:I

    invoke-virtual {v0, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, p2}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 133
    const/4 v0, 0x0

    if-nez p3, :cond_0

    .line 134
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/ModuleWriter;->exports:Lnet/bytebuddy/jar/asm/ByteVector;

    invoke-virtual {v1, v0}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    goto :goto_1

    .line 136
    :cond_0
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/ModuleWriter;->exports:Lnet/bytebuddy/jar/asm/ByteVector;

    array-length v2, p3

    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 137
    array-length v1, p3

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v2, p3, v0

    .line 138
    .local v2, "module":Ljava/lang/String;
    iget-object v3, p0, Lnet/bytebuddy/jar/asm/ModuleWriter;->exports:Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v4, p0, Lnet/bytebuddy/jar/asm/ModuleWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    invoke-virtual {v4, v2}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantModule(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object v4

    iget v4, v4, Lnet/bytebuddy/jar/asm/Symbol;->index:I

    invoke-virtual {v3, v4}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 137
    .end local v2    # "module":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 141
    :cond_1
    :goto_1
    iget v0, p0, Lnet/bytebuddy/jar/asm/ModuleWriter;->exportsCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/bytebuddy/jar/asm/ModuleWriter;->exportsCount:I

    .line 142
    return-void
.end method

.method public visitMainClass(Ljava/lang/String;)V
    .locals 1
    .param p1, "mainClass"    # Ljava/lang/String;

    .line 112
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/ModuleWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantClass(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object v0

    iget v0, v0, Lnet/bytebuddy/jar/asm/Symbol;->index:I

    iput v0, p0, Lnet/bytebuddy/jar/asm/ModuleWriter;->mainClassIndex:I

    .line 113
    return-void
.end method

.method public varargs visitOpen(Ljava/lang/String;I[Ljava/lang/String;)V
    .locals 5
    .param p1, "packaze"    # Ljava/lang/String;
    .param p2, "access"    # I
    .param p3, "modules"    # [Ljava/lang/String;

    .line 146
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/ModuleWriter;->opens:Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/ModuleWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    invoke-virtual {v1, p1}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantPackage(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object v1

    iget v1, v1, Lnet/bytebuddy/jar/asm/Symbol;->index:I

    invoke-virtual {v0, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, p2}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 147
    const/4 v0, 0x0

    if-nez p3, :cond_0

    .line 148
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/ModuleWriter;->opens:Lnet/bytebuddy/jar/asm/ByteVector;

    invoke-virtual {v1, v0}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    goto :goto_1

    .line 150
    :cond_0
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/ModuleWriter;->opens:Lnet/bytebuddy/jar/asm/ByteVector;

    array-length v2, p3

    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 151
    array-length v1, p3

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v2, p3, v0

    .line 152
    .local v2, "module":Ljava/lang/String;
    iget-object v3, p0, Lnet/bytebuddy/jar/asm/ModuleWriter;->opens:Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v4, p0, Lnet/bytebuddy/jar/asm/ModuleWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    invoke-virtual {v4, v2}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantModule(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object v4

    iget v4, v4, Lnet/bytebuddy/jar/asm/Symbol;->index:I

    invoke-virtual {v3, v4}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 151
    .end local v2    # "module":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 155
    :cond_1
    :goto_1
    iget v0, p0, Lnet/bytebuddy/jar/asm/ModuleWriter;->opensCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/bytebuddy/jar/asm/ModuleWriter;->opensCount:I

    .line 156
    return-void
.end method

.method public visitPackage(Ljava/lang/String;)V
    .locals 2
    .param p1, "packaze"    # Ljava/lang/String;

    .line 117
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/ModuleWriter;->packageIndex:Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/ModuleWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    invoke-virtual {v1, p1}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantPackage(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object v1

    iget v1, v1, Lnet/bytebuddy/jar/asm/Symbol;->index:I

    invoke-virtual {v0, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 118
    iget v0, p0, Lnet/bytebuddy/jar/asm/ModuleWriter;->packageCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/bytebuddy/jar/asm/ModuleWriter;->packageCount:I

    .line 119
    return-void
.end method

.method public varargs visitProvide(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 5
    .param p1, "service"    # Ljava/lang/String;
    .param p2, "providers"    # [Ljava/lang/String;

    .line 166
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/ModuleWriter;->provides:Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/ModuleWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    invoke-virtual {v1, p1}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantClass(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object v1

    iget v1, v1, Lnet/bytebuddy/jar/asm/Symbol;->index:I

    invoke-virtual {v0, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 167
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/ModuleWriter;->provides:Lnet/bytebuddy/jar/asm/ByteVector;

    array-length v1, p2

    invoke-virtual {v0, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 168
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p2, v1

    .line 169
    .local v2, "provider":Ljava/lang/String;
    iget-object v3, p0, Lnet/bytebuddy/jar/asm/ModuleWriter;->provides:Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v4, p0, Lnet/bytebuddy/jar/asm/ModuleWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    invoke-virtual {v4, v2}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantClass(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object v4

    iget v4, v4, Lnet/bytebuddy/jar/asm/Symbol;->index:I

    invoke-virtual {v3, v4}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 168
    .end local v2    # "provider":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 171
    :cond_0
    iget v0, p0, Lnet/bytebuddy/jar/asm/ModuleWriter;->providesCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/bytebuddy/jar/asm/ModuleWriter;->providesCount:I

    .line 172
    return-void
.end method

.method public visitRequire(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "access"    # I
    .param p3, "version"    # Ljava/lang/String;

    .line 123
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/ModuleWriter;->requires:Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/ModuleWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    .line 124
    invoke-virtual {v1, p1}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantModule(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object v1

    iget v1, v1, Lnet/bytebuddy/jar/asm/Symbol;->index:I

    invoke-virtual {v0, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v0

    .line 125
    invoke-virtual {v0, p2}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v0

    .line 126
    if-nez p3, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/ModuleWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    invoke-virtual {v1, p3}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v1

    :goto_0
    invoke-virtual {v0, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 127
    iget v0, p0, Lnet/bytebuddy/jar/asm/ModuleWriter;->requiresCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/bytebuddy/jar/asm/ModuleWriter;->requiresCount:I

    .line 128
    return-void
.end method

.method public visitUse(Ljava/lang/String;)V
    .locals 2
    .param p1, "service"    # Ljava/lang/String;

    .line 160
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/ModuleWriter;->usesIndex:Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/ModuleWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    invoke-virtual {v1, p1}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantClass(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object v1

    iget v1, v1, Lnet/bytebuddy/jar/asm/Symbol;->index:I

    invoke-virtual {v0, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 161
    iget v0, p0, Lnet/bytebuddy/jar/asm/ModuleWriter;->usesCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/bytebuddy/jar/asm/ModuleWriter;->usesCount:I

    .line 162
    return-void
.end method
