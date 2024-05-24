.class public Lcom/android/dx/cf/direct/ClassPathOpener;
.super Ljava/lang/Object;
.source "ClassPathOpener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dx/cf/direct/ClassPathOpener$FileNameFilter;,
        Lcom/android/dx/cf/direct/ClassPathOpener$Consumer;
    }
.end annotation


# static fields
.field public static final acceptAll:Lcom/android/dx/cf/direct/ClassPathOpener$FileNameFilter;


# instance fields
.field private final consumer:Lcom/android/dx/cf/direct/ClassPathOpener$Consumer;

.field private filter:Lcom/android/dx/cf/direct/ClassPathOpener$FileNameFilter;

.field private final pathname:Ljava/lang/String;

.field private final sort:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 96
    new-instance v0, Lcom/android/dx/cf/direct/ClassPathOpener$1;

    invoke-direct {v0}, Lcom/android/dx/cf/direct/ClassPathOpener$1;-><init>()V

    sput-object v0, Lcom/android/dx/cf/direct/ClassPathOpener;->acceptAll:Lcom/android/dx/cf/direct/ClassPathOpener$FileNameFilter;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLcom/android/dx/cf/direct/ClassPathOpener$Consumer;)V
    .locals 1
    .param p1, "pathname"    # Ljava/lang/String;
    .param p2, "sort"    # Z
    .param p3, "consumer"    # Lcom/android/dx/cf/direct/ClassPathOpener$Consumer;

    .line 114
    sget-object v0, Lcom/android/dx/cf/direct/ClassPathOpener;->acceptAll:Lcom/android/dx/cf/direct/ClassPathOpener$FileNameFilter;

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/dx/cf/direct/ClassPathOpener;-><init>(Ljava/lang/String;ZLcom/android/dx/cf/direct/ClassPathOpener$FileNameFilter;Lcom/android/dx/cf/direct/ClassPathOpener$Consumer;)V

    .line 115
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLcom/android/dx/cf/direct/ClassPathOpener$FileNameFilter;Lcom/android/dx/cf/direct/ClassPathOpener$Consumer;)V
    .locals 0
    .param p1, "pathname"    # Ljava/lang/String;
    .param p2, "sort"    # Z
    .param p3, "filter"    # Lcom/android/dx/cf/direct/ClassPathOpener$FileNameFilter;
    .param p4, "consumer"    # Lcom/android/dx/cf/direct/ClassPathOpener$Consumer;

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    iput-object p1, p0, Lcom/android/dx/cf/direct/ClassPathOpener;->pathname:Ljava/lang/String;

    .line 129
    iput-boolean p2, p0, Lcom/android/dx/cf/direct/ClassPathOpener;->sort:Z

    .line 130
    iput-object p4, p0, Lcom/android/dx/cf/direct/ClassPathOpener;->consumer:Lcom/android/dx/cf/direct/ClassPathOpener$Consumer;

    .line 131
    iput-object p3, p0, Lcom/android/dx/cf/direct/ClassPathOpener;->filter:Lcom/android/dx/cf/direct/ClassPathOpener$FileNameFilter;

    .line 132
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;

    .line 36
    invoke-static {p0, p1}, Lcom/android/dx/cf/direct/ClassPathOpener;->compareClassNames(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static compareClassNames(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "b"    # Ljava/lang/String;

    .line 189
    const/16 v0, 0x24

    const/16 v1, 0x30

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    .line 190
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    .line 196
    const-string v0, "package-info"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 197
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 199
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private processArchive(Ljava/io/File;)Z
    .locals 14
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 244
    new-instance v0, Ljava/util/zip/ZipFile;

    invoke-direct {v0, p1}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    .line 246
    .local v0, "zip":Ljava/util/zip/ZipFile;
    nop

    .line 247
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v1

    .line 249
    .local v1, "entriesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<+Ljava/util/zip/ZipEntry;>;"
    iget-boolean v2, p0, Lcom/android/dx/cf/direct/ClassPathOpener;->sort:Z

    if-eqz v2, :cond_0

    .line 250
    new-instance v2, Lcom/android/dx/cf/direct/ClassPathOpener$3;

    invoke-direct {v2, p0}, Lcom/android/dx/cf/direct/ClassPathOpener$3;-><init>(Lcom/android/dx/cf/direct/ClassPathOpener;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 258
    :cond_0
    iget-object v2, p0, Lcom/android/dx/cf/direct/ClassPathOpener;->consumer:Lcom/android/dx/cf/direct/ClassPathOpener$Consumer;

    invoke-interface {v2, p1}, Lcom/android/dx/cf/direct/ClassPathOpener$Consumer;->onProcessArchiveStart(Ljava/io/File;)V

    .line 260
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    const v3, 0x9c40

    invoke-direct {v2, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 261
    .local v2, "baos":Ljava/io/ByteArrayOutputStream;
    const/16 v3, 0x4e20

    new-array v3, v3, [B

    .line 262
    .local v3, "buf":[B
    const/4 v4, 0x0

    .line 264
    .local v4, "any":Z
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/zip/ZipEntry;

    .line 265
    .local v6, "one":Ljava/util/zip/ZipEntry;
    invoke-virtual {v6}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v7

    .line 267
    .local v7, "isDirectory":Z
    invoke-virtual {v6}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v8

    .line 268
    .local v8, "path":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/dx/cf/direct/ClassPathOpener;->filter:Lcom/android/dx/cf/direct/ClassPathOpener$FileNameFilter;

    invoke-interface {v9, v8}, Lcom/android/dx/cf/direct/ClassPathOpener$FileNameFilter;->accept(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 270
    const/4 v9, 0x0

    if-nez v7, :cond_2

    .line 271
    invoke-virtual {v0, v6}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v10

    .line 273
    .local v10, "in":Ljava/io/InputStream;
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 275
    :goto_1
    invoke-virtual {v10, v3}, Ljava/io/InputStream;->read([B)I

    move-result v11

    move v12, v11

    .local v12, "read":I
    const/4 v13, -0x1

    if-eq v11, v13, :cond_1

    .line 276
    invoke-virtual {v2, v3, v9, v12}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1

    .line 279
    :cond_1
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    .line 280
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    .line 281
    .end local v10    # "in":Ljava/io/InputStream;
    .end local v12    # "read":I
    .local v9, "bytes":[B
    goto :goto_2

    .line 282
    .end local v9    # "bytes":[B
    :cond_2
    new-array v9, v9, [B

    .line 285
    .restart local v9    # "bytes":[B
    :goto_2
    iget-object v10, p0, Lcom/android/dx/cf/direct/ClassPathOpener;->consumer:Lcom/android/dx/cf/direct/ClassPathOpener$Consumer;

    invoke-virtual {v6}, Ljava/util/zip/ZipEntry;->getTime()J

    move-result-wide v11

    invoke-interface {v10, v8, v11, v12, v9}, Lcom/android/dx/cf/direct/ClassPathOpener$Consumer;->processFileBytes(Ljava/lang/String;J[B)Z

    move-result v10

    or-int/2addr v4, v10

    .line 287
    .end local v6    # "one":Ljava/util/zip/ZipEntry;
    .end local v7    # "isDirectory":Z
    .end local v8    # "path":Ljava/lang/String;
    .end local v9    # "bytes":[B
    :cond_3
    goto :goto_0

    .line 289
    :cond_4
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V

    .line 290
    return v4
.end method

.method private processDirectory(Ljava/io/File;Z)Z
    .locals 6
    .param p1, "dir"    # Ljava/io/File;
    .param p2, "topLevel"    # Z

    .line 211
    if-eqz p2, :cond_0

    .line 212
    new-instance v0, Ljava/io/File;

    const-string v1, "."

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object p1, v0

    .line 215
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 216
    .local v0, "files":[Ljava/io/File;
    array-length v1, v0

    .line 217
    .local v1, "len":I
    const/4 v2, 0x0

    .line 219
    .local v2, "any":Z
    iget-boolean v3, p0, Lcom/android/dx/cf/direct/ClassPathOpener;->sort:Z

    if-eqz v3, :cond_1

    .line 220
    new-instance v3, Lcom/android/dx/cf/direct/ClassPathOpener$2;

    invoke-direct {v3, p0}, Lcom/android/dx/cf/direct/ClassPathOpener$2;-><init>(Lcom/android/dx/cf/direct/ClassPathOpener;)V

    invoke-static {v0, v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 228
    :cond_1
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_2

    .line 229
    aget-object v4, v0, v3

    const/4 v5, 0x0

    invoke-direct {p0, v4, v5}, Lcom/android/dx/cf/direct/ClassPathOpener;->processOne(Ljava/io/File;Z)Z

    move-result v4

    or-int/2addr v2, v4

    .line 228
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 232
    .end local v3    # "i":I
    :cond_2
    return v2
.end method

.method private processOne(Ljava/io/File;Z)Z
    .locals 6
    .param p1, "file"    # Ljava/io/File;
    .param p2, "topLevel"    # Z

    .line 156
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 157
    invoke-direct {p0, p1, p2}, Lcom/android/dx/cf/direct/ClassPathOpener;->processDirectory(Ljava/io/File;Z)Z

    move-result v0

    return v0

    .line 160
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 162
    .local v1, "path":Ljava/lang/String;
    const-string v2, ".zip"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, ".jar"

    .line 163
    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, ".apk"

    .line 164
    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 167
    :cond_1
    iget-object v2, p0, Lcom/android/dx/cf/direct/ClassPathOpener;->filter:Lcom/android/dx/cf/direct/ClassPathOpener$FileNameFilter;

    invoke-interface {v2, v1}, Lcom/android/dx/cf/direct/ClassPathOpener$FileNameFilter;->accept(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 168
    invoke-static {p1}, Lcom/android/dex/util/FileUtils;->readFile(Ljava/io/File;)[B

    move-result-object v2

    .line 169
    .local v2, "bytes":[B
    iget-object v3, p0, Lcom/android/dx/cf/direct/ClassPathOpener;->consumer:Lcom/android/dx/cf/direct/ClassPathOpener$Consumer;

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    invoke-interface {v3, v1, v4, v5, v2}, Lcom/android/dx/cf/direct/ClassPathOpener$Consumer;->processFileBytes(Ljava/lang/String;J[B)Z

    move-result v0

    return v0

    .line 171
    .end local v2    # "bytes":[B
    :cond_2
    return v0

    .line 165
    :cond_3
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/dx/cf/direct/ClassPathOpener;->processArchive(Ljava/io/File;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 173
    .end local v1    # "path":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 174
    .local v1, "ex":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/android/dx/cf/direct/ClassPathOpener;->consumer:Lcom/android/dx/cf/direct/ClassPathOpener$Consumer;

    invoke-interface {v2, v1}, Lcom/android/dx/cf/direct/ClassPathOpener$Consumer;->onException(Ljava/lang/Exception;)V

    .line 175
    return v0
.end method


# virtual methods
.method public process()Z
    .locals 2

    .line 141
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/dx/cf/direct/ClassPathOpener;->pathname:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 143
    .local v0, "file":Ljava/io/File;
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/dx/cf/direct/ClassPathOpener;->processOne(Ljava/io/File;Z)Z

    move-result v1

    return v1
.end method
