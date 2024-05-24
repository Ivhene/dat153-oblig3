.class public Lannotator/scanner/MethodOffsetClassVisitor;
.super Lorg/checkerframework/org/objectweb/asmx/ClassWriter;
.source "MethodOffsetClassVisitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lannotator/scanner/MethodOffsetClassVisitor$MethodOffsetMethodVisitor;
    }
.end annotation


# instance fields
.field codeOffsetAdapter:Lscenelib/annotations/io/classfile/CodeOffsetAdapter;

.field methodCodeOffsetAdapter:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

.field private methodName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/checkerframework/org/objectweb/asmx/ClassReader;)V
    .locals 2
    .param p1, "classReader"    # Lorg/checkerframework/org/objectweb/asmx/ClassReader;

    .line 35
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;-><init>(ZZ)V

    .line 36
    const-string v0, "LocalVariableVisitor: DEFAULT_METHOD"

    iput-object v0, p0, Lannotator/scanner/MethodOffsetClassVisitor;->methodName:Ljava/lang/String;

    .line 37
    new-instance v0, Lscenelib/annotations/io/classfile/CodeOffsetAdapter;

    invoke-direct {v0, p1}, Lscenelib/annotations/io/classfile/CodeOffsetAdapter;-><init>(Lorg/checkerframework/org/objectweb/asmx/ClassReader;)V

    iput-object v0, p0, Lannotator/scanner/MethodOffsetClassVisitor;->codeOffsetAdapter:Lscenelib/annotations/io/classfile/CodeOffsetAdapter;

    .line 38
    return-void
.end method

.method static synthetic access$000(Lannotator/scanner/MethodOffsetClassVisitor;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lannotator/scanner/MethodOffsetClassVisitor;

    .line 26
    iget-object v0, p0, Lannotator/scanner/MethodOffsetClassVisitor;->methodName:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;
    .locals 7
    .param p1, "access"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "descriptor"    # Ljava/lang/String;
    .param p4, "signature"    # Ljava/lang/String;
    .param p5, "exceptions"    # [Ljava/lang/String;

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {p3, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p3, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lannotator/scanner/MethodOffsetClassVisitor;->methodName:Ljava/lang/String;

    .line 44
    iget-object v1, p0, Lannotator/scanner/MethodOffsetClassVisitor;->codeOffsetAdapter:Lscenelib/annotations/io/classfile/CodeOffsetAdapter;

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lscenelib/annotations/io/classfile/CodeOffsetAdapter;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    move-result-object v0

    iput-object v0, p0, Lannotator/scanner/MethodOffsetClassVisitor;->methodCodeOffsetAdapter:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    .line 45
    new-instance v0, Lannotator/scanner/MethodOffsetClassVisitor$MethodOffsetMethodVisitor;

    .line 46
    invoke-super/range {p0 .. p5}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lannotator/scanner/MethodOffsetClassVisitor$MethodOffsetMethodVisitor;-><init>(Lannotator/scanner/MethodOffsetClassVisitor;Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;)V

    .line 45
    return-object v0
.end method
