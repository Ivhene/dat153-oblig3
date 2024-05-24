.class Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodCodeIndexer;
.super Lorg/checkerframework/org/objectweb/asmx/commons/EmptyVisitor;
.source "ClassAnnotationSceneWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MethodCodeIndexer"
.end annotation


# instance fields
.field private codeStart:I

.field constrs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field lambdas:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;


# direct methods
.method constructor <init>(Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;)V
    .locals 5
    .param p1, "this$0"    # Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;

    .line 1313
    iput-object p1, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodCodeIndexer;->this$0:Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;

    invoke-direct {p0}, Lorg/checkerframework/org/objectweb/asmx/commons/EmptyVisitor;-><init>()V

    .line 1309
    const/4 v0, 0x0

    iput v0, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodCodeIndexer;->codeStart:I

    .line 1316
    invoke-static {p1}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->access$1700(Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;)Lorg/checkerframework/org/objectweb/asmx/ClassReader;

    move-result-object v0

    iget v0, v0, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->header:I

    add-int/lit8 v0, v0, 0x6

    iput v0, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodCodeIndexer;->codeStart:I

    .line 1317
    invoke-static {p1}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->access$1700(Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;)Lorg/checkerframework/org/objectweb/asmx/ClassReader;

    move-result-object v1

    iget v2, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodCodeIndexer;->codeStart:I

    invoke-virtual {v1, v2}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUnsignedShort(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodCodeIndexer;->codeStart:I

    .line 1318
    invoke-static {p1}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->access$1700(Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;)Lorg/checkerframework/org/objectweb/asmx/ClassReader;

    move-result-object v0

    iget v1, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodCodeIndexer;->codeStart:I

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUnsignedShort(I)I

    move-result v0

    .line 1319
    .local v0, "fieldCount":I
    iget v1, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodCodeIndexer;->codeStart:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodCodeIndexer;->codeStart:I

    .line 1320
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    .line 1321
    invoke-static {p1}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->access$1700(Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;)Lorg/checkerframework/org/objectweb/asmx/ClassReader;

    move-result-object v1

    iget v2, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodCodeIndexer;->codeStart:I

    add-int/lit8 v2, v2, 0x6

    invoke-virtual {v1, v2}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUnsignedShort(I)I

    move-result v1

    .line 1322
    .local v1, "attrCount":I
    iget v2, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodCodeIndexer;->codeStart:I

    add-int/lit8 v2, v2, 0x8

    iput v2, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodCodeIndexer;->codeStart:I

    .line 1323
    :goto_1
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_0

    .line 1324
    iget v2, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodCodeIndexer;->codeStart:I

    invoke-static {p1}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->access$1700(Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;)Lorg/checkerframework/org/objectweb/asmx/ClassReader;

    move-result-object v3

    iget v4, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodCodeIndexer;->codeStart:I

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {v3, v4}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readInt(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x6

    add-int/2addr v2, v3

    iput v2, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodCodeIndexer;->codeStart:I

    goto :goto_1

    .line 1326
    .end local v1    # "attrCount":I
    :cond_0
    goto :goto_0

    .line 1327
    :cond_1
    iget v1, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodCodeIndexer;->codeStart:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodCodeIndexer;->codeStart:I

    .line 1328
    return-void
.end method


# virtual methods
.method public visit(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p1, "version"    # I
    .param p2, "access"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "signature"    # Ljava/lang/String;
    .param p5, "superName"    # Ljava/lang/String;
    .param p6, "interfaces"    # [Ljava/lang/String;

    .line 1333
    return-void
.end method

.method public visitField(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/checkerframework/org/objectweb/asmx/FieldVisitor;
    .locals 1
    .param p1, "access"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "descriptor"    # Ljava/lang/String;
    .param p4, "signature"    # Ljava/lang/String;
    .param p5, "value"    # Ljava/lang/Object;

    .line 1349
    const/4 v0, 0x0

    return-object v0
.end method

.method public visitInnerClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "outerName"    # Ljava/lang/String;
    .param p3, "innerName"    # Ljava/lang/String;
    .param p4, "access"    # I

    .line 1344
    return-void
.end method

.method public visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;
    .locals 6
    .param p1, "access"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "descriptor"    # Ljava/lang/String;
    .param p4, "signature"    # Ljava/lang/String;
    .param p5, "exceptions"    # [Ljava/lang/String;

    .line 1355
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1356
    .local v0, "methodDescription":Ljava/lang/String;
    iget-object v1, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodCodeIndexer;->this$0:Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;

    invoke-static {v1}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->access$1600(Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    iput-object v1, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodCodeIndexer;->constrs:Ljava/util/Set;

    .line 1357
    if-nez v1, :cond_0

    .line 1358
    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    iput-object v1, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodCodeIndexer;->constrs:Ljava/util/Set;

    .line 1359
    iget-object v1, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodCodeIndexer;->this$0:Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;

    invoke-static {v1}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->access$1600(Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodCodeIndexer;->constrs:Ljava/util/Set;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1361
    :cond_0
    iget-object v1, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodCodeIndexer;->this$0:Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;

    invoke-static {v1}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->access$1500(Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    iput-object v1, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodCodeIndexer;->lambdas:Ljava/util/Set;

    .line 1362
    if-nez v1, :cond_1

    .line 1363
    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    iput-object v1, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodCodeIndexer;->lambdas:Ljava/util/Set;

    .line 1364
    iget-object v1, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodCodeIndexer;->this$0:Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;

    invoke-static {v1}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->access$1500(Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodCodeIndexer;->lambdas:Ljava/util/Set;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1367
    :cond_1
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/MethodAdapter;

    new-instance v2, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodCodeIndexer$1;

    iget-object v3, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodCodeIndexer;->this$0:Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;

    .line 1368
    invoke-static {v3}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->access$1700(Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;)Lorg/checkerframework/org/objectweb/asmx/ClassReader;

    move-result-object v3

    new-instance v4, Lorg/checkerframework/org/objectweb/asmx/commons/EmptyVisitor;

    invoke-direct {v4}, Lorg/checkerframework/org/objectweb/asmx/commons/EmptyVisitor;-><init>()V

    iget v5, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodCodeIndexer;->codeStart:I

    invoke-direct {v2, p0, v3, v4, v5}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodCodeIndexer$1;-><init>(Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodCodeIndexer;Lorg/checkerframework/org/objectweb/asmx/ClassReader;Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;I)V

    invoke-direct {v1, v2}, Lorg/checkerframework/org/objectweb/asmx/MethodAdapter;-><init>(Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;)V

    .line 1367
    return-object v1
.end method

.method public visitOuterClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "owner"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "descriptor"    # Ljava/lang/String;

    .line 1339
    return-void
.end method

.method public visitSource(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "debug"    # Ljava/lang/String;

    .line 1336
    return-void
.end method
