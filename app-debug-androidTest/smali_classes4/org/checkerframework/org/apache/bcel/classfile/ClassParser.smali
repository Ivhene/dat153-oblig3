.class public final Lorg/checkerframework/org/apache/bcel/classfile/ClassParser;
.super Ljava/lang/Object;
.source "ClassParser.java"


# static fields
.field private static final BUFSIZE:I = 0x2000


# instance fields
.field private access_flags:I

.field private attributes:[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;

.field private class_name_index:I

.field private constant_pool:Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

.field private dataInputStream:Ljava/io/DataInputStream;

.field private fields:[Lorg/checkerframework/org/apache/bcel/classfile/Field;

.field private final fileOwned:Z

.field private final file_name:Ljava/lang/String;

.field private interfaces:[I

.field private final is_zip:Z

.field private major:I

.field private methods:[Lorg/checkerframework/org/apache/bcel/classfile/Method;

.field private minor:I

.field private superclass_name_index:I

.field private zip_file:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 4
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "file_name"    # Ljava/lang/String;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p2, p0, Lorg/checkerframework/org/apache/bcel/classfile/ClassParser;->file_name:Ljava/lang/String;

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/ClassParser;->fileOwned:Z

    .line 73
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 74
    .local v1, "clazz":Ljava/lang/String;
    const-string v2, "java.util.zip."

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "java.util.jar."

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    iput-boolean v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/ClassParser;->is_zip:Z

    .line 75
    instance-of v0, p1, Ljava/io/DataInputStream;

    if-eqz v0, :cond_2

    .line 76
    move-object v0, p1

    check-cast v0, Ljava/io/DataInputStream;

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/ClassParser;->dataInputStream:Ljava/io/DataInputStream;

    goto :goto_0

    .line 78
    :cond_2
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v2, Ljava/io/BufferedInputStream;

    const/16 v3, 0x2000

    invoke-direct {v2, p1, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    invoke-direct {v0, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/ClassParser;->dataInputStream:Ljava/io/DataInputStream;

    .line 80
    :goto_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "file_name"    # Ljava/lang/String;

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/ClassParser;->is_zip:Z

    .line 89
    iput-object p1, p0, Lorg/checkerframework/org/apache/bcel/classfile/ClassParser;->file_name:Ljava/lang/String;

    .line 90
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/ClassParser;->fileOwned:Z

    .line 91
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "zip_file"    # Ljava/lang/String;
    .param p2, "file_name"    # Ljava/lang/String;

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/ClassParser;->is_zip:Z

    .line 101
    iput-boolean v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/ClassParser;->fileOwned:Z

    .line 102
    iput-object p1, p0, Lorg/checkerframework/org/apache/bcel/classfile/ClassParser;->zip_file:Ljava/lang/String;

    .line 103
    iput-object p2, p0, Lorg/checkerframework/org/apache/bcel/classfile/ClassParser;->file_name:Ljava/lang/String;

    .line 104
    return-void
.end method

.method private readAttributes()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/checkerframework/org/apache/bcel/classfile/ClassFormatException;
        }
    .end annotation

    .line 203
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/ClassParser;->dataInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    .line 204
    .local v0, "attributes_count":I
    new-array v1, v0, [Lorg/checkerframework/org/apache/bcel/classfile/Attribute;

    iput-object v1, p0, Lorg/checkerframework/org/apache/bcel/classfile/ClassParser;->attributes:[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;

    .line 205
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 206
    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/classfile/ClassParser;->attributes:[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;

    iget-object v3, p0, Lorg/checkerframework/org/apache/bcel/classfile/ClassParser;->dataInputStream:Ljava/io/DataInputStream;

    iget-object v4, p0, Lorg/checkerframework/org/apache/bcel/classfile/ClassParser;->constant_pool:Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    invoke-static {v3, v4}, Lorg/checkerframework/org/apache/bcel/classfile/Attribute;->readAttribute(Ljava/io/DataInputStream;Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)Lorg/checkerframework/org/apache/bcel/classfile/Attribute;

    move-result-object v3

    aput-object v3, v2, v1

    .line 205
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 208
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private readClassInfo()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/checkerframework/org/apache/bcel/classfile/ClassFormatException;
        }
    .end annotation

    .line 217
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/ClassParser;->dataInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    iput v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/ClassParser;->access_flags:I

    .line 221
    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_0

    .line 222
    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/ClassParser;->access_flags:I

    .line 224
    :cond_0
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/ClassParser;->access_flags:I

    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_2

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_1

    goto :goto_0

    .line 226
    :cond_1
    new-instance v0, Lorg/checkerframework/org/apache/bcel/classfile/ClassFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/classfile/ClassParser;->file_name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " can\'t be both final and abstract"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/org/apache/bcel/classfile/ClassFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 228
    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/ClassParser;->dataInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    iput v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/ClassParser;->class_name_index:I

    .line 229
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/ClassParser;->dataInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    iput v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/ClassParser;->superclass_name_index:I

    .line 230
    return-void
.end method

.method private readConstantPool()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/checkerframework/org/apache/bcel/classfile/ClassFormatException;
        }
    .end annotation

    .line 239
    new-instance v0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/classfile/ClassParser;->dataInputStream:Ljava/io/DataInputStream;

    invoke-direct {v0, v1}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;-><init>(Ljava/io/DataInput;)V

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/ClassParser;->constant_pool:Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    .line 240
    return-void
.end method

.method private readFields()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/checkerframework/org/apache/bcel/classfile/ClassFormatException;
        }
    .end annotation

    .line 249
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/ClassParser;->dataInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    .line 250
    .local v0, "fields_count":I
    new-array v1, v0, [Lorg/checkerframework/org/apache/bcel/classfile/Field;

    iput-object v1, p0, Lorg/checkerframework/org/apache/bcel/classfile/ClassParser;->fields:[Lorg/checkerframework/org/apache/bcel/classfile/Field;

    .line 251
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 252
    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/classfile/ClassParser;->fields:[Lorg/checkerframework/org/apache/bcel/classfile/Field;

    new-instance v3, Lorg/checkerframework/org/apache/bcel/classfile/Field;

    iget-object v4, p0, Lorg/checkerframework/org/apache/bcel/classfile/ClassParser;->dataInputStream:Ljava/io/DataInputStream;

    iget-object v5, p0, Lorg/checkerframework/org/apache/bcel/classfile/ClassParser;->constant_pool:Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    invoke-direct {v3, v4, v5}, Lorg/checkerframework/org/apache/bcel/classfile/Field;-><init>(Ljava/io/DataInput;Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V

    aput-object v3, v2, v1

    .line 251
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 254
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private readID()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/checkerframework/org/apache/bcel/classfile/ClassFormatException;
        }
    .end annotation

    .line 265
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/ClassParser;->dataInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    const v1, -0x35014542    # -8346975.0f

    if-ne v0, v1, :cond_0

    .line 268
    return-void

    .line 266
    :cond_0
    new-instance v0, Lorg/checkerframework/org/apache/bcel/classfile/ClassFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/classfile/ClassParser;->file_name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a Java .class file"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/org/apache/bcel/classfile/ClassFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readInterfaces()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/checkerframework/org/apache/bcel/classfile/ClassFormatException;
        }
    .end annotation

    .line 277
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/ClassParser;->dataInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    .line 278
    .local v0, "interfaces_count":I
    new-array v1, v0, [I

    iput-object v1, p0, Lorg/checkerframework/org/apache/bcel/classfile/ClassParser;->interfaces:[I

    .line 279
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 280
    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/classfile/ClassParser;->interfaces:[I

    iget-object v3, p0, Lorg/checkerframework/org/apache/bcel/classfile/ClassParser;->dataInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v3

    aput v3, v2, v1

    .line 279
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 282
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private readMethods()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/checkerframework/org/apache/bcel/classfile/ClassFormatException;
        }
    .end annotation

    .line 291
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/ClassParser;->dataInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    .line 292
    .local v0, "methods_count":I
    new-array v1, v0, [Lorg/checkerframework/org/apache/bcel/classfile/Method;

    iput-object v1, p0, Lorg/checkerframework/org/apache/bcel/classfile/ClassParser;->methods:[Lorg/checkerframework/org/apache/bcel/classfile/Method;

    .line 293
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 294
    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/classfile/ClassParser;->methods:[Lorg/checkerframework/org/apache/bcel/classfile/Method;

    new-instance v3, Lorg/checkerframework/org/apache/bcel/classfile/Method;

    iget-object v4, p0, Lorg/checkerframework/org/apache/bcel/classfile/ClassParser;->dataInputStream:Ljava/io/DataInputStream;

    iget-object v5, p0, Lorg/checkerframework/org/apache/bcel/classfile/ClassParser;->constant_pool:Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    invoke-direct {v3, v4, v5}, Lorg/checkerframework/org/apache/bcel/classfile/Method;-><init>(Ljava/io/DataInput;Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V

    aput-object v3, v2, v1

    .line 293
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 296
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private readVersion()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/checkerframework/org/apache/bcel/classfile/ClassFormatException;
        }
    .end annotation

    .line 305
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/ClassParser;->dataInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    iput v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/ClassParser;->minor:I

    .line 306
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/ClassParser;->dataInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    iput v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/ClassParser;->major:I

    .line 307
    return-void
.end method


# virtual methods
.method public parse()Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/checkerframework/org/apache/bcel/classfile/ClassFormatException;
        }
    .end annotation

    .line 119
    const/4 v0, 0x0

    .line 121
    .local v0, "zip":Ljava/util/zip/ZipFile;
    :try_start_0
    iget-boolean v1, p0, Lorg/checkerframework/org/apache/bcel/classfile/ClassParser;->fileOwned:Z

    if-eqz v1, :cond_2

    .line 122
    iget-boolean v1, p0, Lorg/checkerframework/org/apache/bcel/classfile/ClassParser;->is_zip:Z

    const/16 v2, 0x2000

    if-eqz v1, :cond_1

    .line 123
    new-instance v1, Ljava/util/zip/ZipFile;

    iget-object v3, p0, Lorg/checkerframework/org/apache/bcel/classfile/ClassParser;->zip_file:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 124
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/classfile/ClassParser;->file_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v1

    .line 126
    .local v1, "entry":Ljava/util/zip/ZipEntry;
    if-eqz v1, :cond_0

    .line 130
    new-instance v3, Ljava/io/DataInputStream;

    new-instance v4, Ljava/io/BufferedInputStream;

    invoke-virtual {v0, v1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    invoke-direct {v3, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v3, p0, Lorg/checkerframework/org/apache/bcel/classfile/ClassParser;->dataInputStream:Ljava/io/DataInputStream;

    .line 132
    .end local v1    # "entry":Ljava/util/zip/ZipEntry;
    goto :goto_0

    .line 127
    .restart local v1    # "entry":Ljava/util/zip/ZipEntry;
    :cond_0
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "File "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/checkerframework/org/apache/bcel/classfile/ClassParser;->file_name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not found"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "zip":Ljava/util/zip/ZipFile;
    throw v2

    .line 133
    .end local v1    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v0    # "zip":Ljava/util/zip/ZipFile;
    :cond_1
    new-instance v1, Ljava/io/DataInputStream;

    new-instance v3, Ljava/io/BufferedInputStream;

    new-instance v4, Ljava/io/FileInputStream;

    iget-object v5, p0, Lorg/checkerframework/org/apache/bcel/classfile/ClassParser;->file_name:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    invoke-direct {v1, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v1, p0, Lorg/checkerframework/org/apache/bcel/classfile/ClassParser;->dataInputStream:Ljava/io/DataInputStream;

    .line 139
    :cond_2
    :goto_0
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/classfile/ClassParser;->readID()V

    .line 141
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/classfile/ClassParser;->readVersion()V

    .line 144
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/classfile/ClassParser;->readConstantPool()V

    .line 146
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/classfile/ClassParser;->readClassInfo()V

    .line 148
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/classfile/ClassParser;->readInterfaces()V

    .line 151
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/classfile/ClassParser;->readFields()V

    .line 153
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/classfile/ClassParser;->readMethods()V

    .line 155
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/classfile/ClassParser;->readAttributes()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    iget-boolean v1, p0, Lorg/checkerframework/org/apache/bcel/classfile/ClassParser;->fileOwned:Z

    if-eqz v1, :cond_4

    .line 174
    :try_start_1
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/classfile/ClassParser;->dataInputStream:Ljava/io/DataInputStream;

    if-eqz v1, :cond_3

    .line 175
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 179
    :cond_3
    goto :goto_1

    .line 177
    :catch_0
    move-exception v1

    .line 182
    :cond_4
    :goto_1
    if-eqz v0, :cond_5

    .line 183
    :try_start_2
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 185
    :catch_1
    move-exception v1

    .line 188
    goto :goto_3

    .line 187
    :cond_5
    :goto_2
    nop

    .line 190
    :goto_3
    new-instance v1, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;

    iget v3, p0, Lorg/checkerframework/org/apache/bcel/classfile/ClassParser;->class_name_index:I

    iget v4, p0, Lorg/checkerframework/org/apache/bcel/classfile/ClassParser;->superclass_name_index:I

    iget-object v5, p0, Lorg/checkerframework/org/apache/bcel/classfile/ClassParser;->file_name:Ljava/lang/String;

    iget v6, p0, Lorg/checkerframework/org/apache/bcel/classfile/ClassParser;->major:I

    iget v7, p0, Lorg/checkerframework/org/apache/bcel/classfile/ClassParser;->minor:I

    iget v8, p0, Lorg/checkerframework/org/apache/bcel/classfile/ClassParser;->access_flags:I

    iget-object v9, p0, Lorg/checkerframework/org/apache/bcel/classfile/ClassParser;->constant_pool:Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    iget-object v10, p0, Lorg/checkerframework/org/apache/bcel/classfile/ClassParser;->interfaces:[I

    iget-object v11, p0, Lorg/checkerframework/org/apache/bcel/classfile/ClassParser;->fields:[Lorg/checkerframework/org/apache/bcel/classfile/Field;

    iget-object v12, p0, Lorg/checkerframework/org/apache/bcel/classfile/ClassParser;->methods:[Lorg/checkerframework/org/apache/bcel/classfile/Method;

    iget-object v13, p0, Lorg/checkerframework/org/apache/bcel/classfile/ClassParser;->attributes:[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;

    iget-boolean v2, p0, Lorg/checkerframework/org/apache/bcel/classfile/ClassParser;->is_zip:Z

    if-eqz v2, :cond_6

    const/4 v2, 0x3

    goto :goto_4

    :cond_6
    const/4 v2, 0x2

    :goto_4
    move v14, v2

    move-object v2, v1

    invoke-direct/range {v2 .. v14}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;-><init>(IILjava/lang/String;IIILorg/checkerframework/org/apache/bcel/classfile/ConstantPool;[I[Lorg/checkerframework/org/apache/bcel/classfile/Field;[Lorg/checkerframework/org/apache/bcel/classfile/Method;[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;B)V

    return-object v1

    .line 172
    :catchall_0
    move-exception v1

    iget-boolean v2, p0, Lorg/checkerframework/org/apache/bcel/classfile/ClassParser;->fileOwned:Z

    if-eqz v2, :cond_8

    .line 174
    :try_start_3
    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/classfile/ClassParser;->dataInputStream:Ljava/io/DataInputStream;

    if-eqz v2, :cond_7

    .line 175
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 179
    :cond_7
    goto :goto_5

    .line 177
    :catch_2
    move-exception v2

    .line 182
    :cond_8
    :goto_5
    if-eqz v0, :cond_9

    .line 183
    :try_start_4
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_6

    .line 185
    :catch_3
    move-exception v2

    goto :goto_7

    .line 187
    :cond_9
    :goto_6
    nop

    .line 188
    :goto_7
    throw v1
.end method
