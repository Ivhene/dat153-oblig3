.class Lorg/checkerframework/common/util/TypeVisualizer$Drawing;
.super Ljava/lang/Object;
.source "TypeVisualizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/common/util/TypeVisualizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Drawing"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/common/util/TypeVisualizer$Drawing$NodeDrawer;,
        Lorg/checkerframework/common/util/TypeVisualizer$Drawing$ConnectionDrawer;
    }
.end annotation


# instance fields
.field private final graphName:Ljava/lang/String;

.field private final lines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private nextId:I

.field private final nodes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/checkerframework/common/util/TypeVisualizer$Node;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final type:Lorg/checkerframework/framework/type/AnnotatedTypeMirror;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V
    .locals 1
    .param p1, "graphName"    # Ljava/lang/String;
    .param p2, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 207
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/common/util/TypeVisualizer$Drawing;->nodes:Ljava/util/Map;

    .line 210
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/common/util/TypeVisualizer$Drawing;->lines:Ljava/util/List;

    .line 218
    const/4 v0, 0x0

    iput v0, p0, Lorg/checkerframework/common/util/TypeVisualizer$Drawing;->nextId:I

    .line 221
    iput-object p1, p0, Lorg/checkerframework/common/util/TypeVisualizer$Drawing;->graphName:Ljava/lang/String;

    .line 222
    iput-object p2, p0, Lorg/checkerframework/common/util/TypeVisualizer$Drawing;->type:Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 223
    return-void
.end method

.method static synthetic access$200(Lorg/checkerframework/common/util/TypeVisualizer$Drawing;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/common/util/TypeVisualizer$Drawing;

    .line 205
    iget-object v0, p0, Lorg/checkerframework/common/util/TypeVisualizer$Drawing;->lines:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Lorg/checkerframework/common/util/TypeVisualizer$Drawing;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/common/util/TypeVisualizer$Drawing;

    .line 205
    iget-object v0, p0, Lorg/checkerframework/common/util/TypeVisualizer$Drawing;->nodes:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$508(Lorg/checkerframework/common/util/TypeVisualizer$Drawing;)I
    .locals 2
    .param p0, "x0"    # Lorg/checkerframework/common/util/TypeVisualizer$Drawing;

    .line 205
    iget v0, p0, Lorg/checkerframework/common/util/TypeVisualizer$Drawing;->nextId:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/checkerframework/common/util/TypeVisualizer$Drawing;->nextId:I

    return v0
.end method

.method private addConnections()V
    .locals 4

    .line 236
    new-instance v0, Lorg/checkerframework/common/util/TypeVisualizer$Drawing$ConnectionDrawer;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/checkerframework/common/util/TypeVisualizer$Drawing$ConnectionDrawer;-><init>(Lorg/checkerframework/common/util/TypeVisualizer$Drawing;Lorg/checkerframework/common/util/TypeVisualizer$1;)V

    .line 237
    .local v0, "connectionDrawer":Lorg/checkerframework/common/util/TypeVisualizer$Drawing$ConnectionDrawer;
    iget-object v1, p0, Lorg/checkerframework/common/util/TypeVisualizer$Drawing;->nodes:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/common/util/TypeVisualizer$Node;

    .line 238
    .local v2, "node":Lorg/checkerframework/common/util/TypeVisualizer$Node;
    invoke-static {v2}, Lorg/checkerframework/common/util/TypeVisualizer$Node;->access$100(Lorg/checkerframework/common/util/TypeVisualizer$Node;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/checkerframework/common/util/TypeVisualizer$Drawing$ConnectionDrawer;->visit(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;

    .line 239
    .end local v2    # "node":Lorg/checkerframework/common/util/TypeVisualizer$Node;
    goto :goto_0

    .line 240
    :cond_0
    return-void
.end method

.method private addNodes(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V
    .locals 1
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 232
    new-instance v0, Lorg/checkerframework/common/util/TypeVisualizer$Drawing$NodeDrawer;

    invoke-direct {v0, p0}, Lorg/checkerframework/common/util/TypeVisualizer$Drawing$NodeDrawer;-><init>(Lorg/checkerframework/common/util/TypeVisualizer$Drawing;)V

    invoke-virtual {v0, p1}, Lorg/checkerframework/common/util/TypeVisualizer$Drawing$NodeDrawer;->visit(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;

    .line 233
    return-void
.end method

.method private write(Ljava/io/File;)V
    .locals 7
    .param p1, "file"    # Ljava/io/File;

    .line 244
    const-string v0, "\ntype="

    const-string v1, "Exception visualizing type:\nfile="

    const/4 v2, 0x0

    .line 246
    .local v2, "writer":Ljava/io/BufferedWriter;
    :try_start_0
    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/FileWriter;

    invoke-direct {v4, p1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    move-object v2, v3

    .line 247
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "digraph "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/checkerframework/common/util/TypeVisualizer$Drawing;->graphName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "{"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 248
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->newLine()V

    .line 249
    iget-object v3, p0, Lorg/checkerframework/common/util/TypeVisualizer$Drawing;->lines:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 250
    .local v4, "line":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 251
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->newLine()V

    .line 252
    .end local v4    # "line":Ljava/lang/String;
    goto :goto_0

    .line 254
    :cond_0
    const-string v3, "}"

    invoke-virtual {v2, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 255
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 266
    nop

    .line 267
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 274
    .end local v2    # "writer":Ljava/io/BufferedWriter;
    nop

    .line 275
    return-void

    .line 266
    .restart local v2    # "writer":Ljava/io/BufferedWriter;
    :catchall_0
    move-exception v3

    goto :goto_1

    .line 256
    :catch_0
    move-exception v3

    .line 257
    .local v3, "e":Ljava/io/IOException;
    :try_start_2
    new-instance v4, Lorg/checkerframework/javacutil/BugInCF;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/checkerframework/common/util/TypeVisualizer$Drawing;->type:Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v2    # "writer":Ljava/io/BufferedWriter;
    .end local p1    # "file":Ljava/io/File;
    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 266
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v2    # "writer":Ljava/io/BufferedWriter;
    .restart local p1    # "file":Ljava/io/File;
    :goto_1
    if-eqz v2, :cond_1

    .line 267
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V

    :cond_1
    nop

    .end local p1    # "file":Ljava/io/File;
    throw v3
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 270
    .end local v2    # "writer":Ljava/io/BufferedWriter;
    .restart local p1    # "file":Ljava/io/File;
    :catch_1
    move-exception v2

    .line 271
    .local v2, "exc":Ljava/io/IOException;
    new-instance v3, Lorg/checkerframework/javacutil/BugInCF;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/common/util/TypeVisualizer$Drawing;->type:Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0, v2}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method


# virtual methods
.method public draw(Ljava/io/File;)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;

    .line 226
    iget-object v0, p0, Lorg/checkerframework/common/util/TypeVisualizer$Drawing;->type:Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-direct {p0, v0}, Lorg/checkerframework/common/util/TypeVisualizer$Drawing;->addNodes(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 227
    invoke-direct {p0}, Lorg/checkerframework/common/util/TypeVisualizer$Drawing;->addConnections()V

    .line 228
    invoke-direct {p0, p1}, Lorg/checkerframework/common/util/TypeVisualizer$Drawing;->write(Ljava/io/File;)V

    .line 229
    return-void
.end method
