.class public Lscenelib/annotations/io/classfile/CodeOffsetAdapter;
.super Lorg/checkerframework/org/objectweb/asmx/ClassAdapter;
.source "CodeOffsetAdapter.java"


# static fields
.field static final debug:Lscenelib/annotations/io/DebugWriter;


# instance fields
.field final buffer:[C

.field final classReader:Lorg/checkerframework/org/objectweb/asmx/ClassReader;

.field codeStart:I

.field methodStart:I

.field offset:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 24
    new-instance v0, Lscenelib/annotations/io/DebugWriter;

    invoke-direct {v0}, Lscenelib/annotations/io/DebugWriter;-><init>()V

    sput-object v0, Lscenelib/annotations/io/classfile/CodeOffsetAdapter;->debug:Lscenelib/annotations/io/DebugWriter;

    .line 25
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lscenelib/annotations/io/DebugWriter;->setEnabled(Z)V

    .line 26
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/org/objectweb/asmx/ClassReader;)V
    .locals 1
    .param p1, "classReader"    # Lorg/checkerframework/org/objectweb/asmx/ClassReader;

    .line 29
    new-instance v0, Lscenelib/annotations/util/AbstractClassVisitor;

    invoke-direct {v0}, Lscenelib/annotations/util/AbstractClassVisitor;-><init>()V

    invoke-direct {p0, p1, v0}, Lscenelib/annotations/io/classfile/CodeOffsetAdapter;-><init>(Lorg/checkerframework/org/objectweb/asmx/ClassReader;Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/org/objectweb/asmx/ClassReader;Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;)V
    .locals 4
    .param p1, "classReader"    # Lorg/checkerframework/org/objectweb/asmx/ClassReader;
    .param p2, "v"    # Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;

    .line 33
    invoke-direct {p0, p2}, Lorg/checkerframework/org/objectweb/asmx/ClassAdapter;-><init>(Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;)V

    .line 34
    iput-object p1, p0, Lscenelib/annotations/io/classfile/CodeOffsetAdapter;->classReader:Lorg/checkerframework/org/objectweb/asmx/ClassReader;

    .line 36
    iget v0, p1, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->header:I

    new-array v0, v0, [C

    iput-object v0, p0, Lscenelib/annotations/io/classfile/CodeOffsetAdapter;->buffer:[C

    .line 37
    iget v0, p1, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->header:I

    add-int/lit8 v0, v0, 0x6

    iput v0, p0, Lscenelib/annotations/io/classfile/CodeOffsetAdapter;->methodStart:I

    .line 38
    invoke-virtual {p1, v0}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUnsignedShort(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    iput v0, p0, Lscenelib/annotations/io/classfile/CodeOffsetAdapter;->methodStart:I

    .line 39
    add-int/lit8 v0, v0, -0x2

    invoke-virtual {p1, v0}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUnsignedShort(I)I

    move-result v0

    .local v0, "i":I
    :goto_0
    if-lez v0, :cond_1

    .line 40
    iget v1, p0, Lscenelib/annotations/io/classfile/CodeOffsetAdapter;->methodStart:I

    add-int/lit8 v1, v1, 0x8

    iput v1, p0, Lscenelib/annotations/io/classfile/CodeOffsetAdapter;->methodStart:I

    .line 41
    add-int/lit8 v1, v1, -0x2

    invoke-virtual {p1, v1}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readUnsignedShort(I)I

    move-result v1

    .local v1, "j":I
    :goto_1
    if-lez v1, :cond_0

    .line 42
    iget v2, p0, Lscenelib/annotations/io/classfile/CodeOffsetAdapter;->methodStart:I

    add-int/lit8 v3, v2, 0x2

    invoke-virtual {p1, v3}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->readInt(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x6

    add-int/2addr v2, v3

    iput v2, p0, Lscenelib/annotations/io/classfile/CodeOffsetAdapter;->methodStart:I

    .line 41
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 39
    .end local v1    # "j":I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 45
    .end local v0    # "i":I
    :cond_1
    iget v0, p0, Lscenelib/annotations/io/classfile/CodeOffsetAdapter;->methodStart:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lscenelib/annotations/io/classfile/CodeOffsetAdapter;->methodStart:I

    .line 46
    return-void
.end method


# virtual methods
.method public getBytecodeOffset()I
    .locals 2

    .line 210
    iget v0, p0, Lscenelib/annotations/io/classfile/CodeOffsetAdapter;->codeStart:I

    iget v1, p0, Lscenelib/annotations/io/classfile/CodeOffsetAdapter;->offset:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getMethodCodeOffset()I
    .locals 1

    .line 208
    iget v0, p0, Lscenelib/annotations/io/classfile/CodeOffsetAdapter;->offset:I

    return v0
.end method

.method public visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;
    .locals 2
    .param p1, "access"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "descriptor"    # Ljava/lang/String;
    .param p4, "signature"    # Ljava/lang/String;
    .param p5, "exceptions"    # [Ljava/lang/String;

    .line 52
    nop

    .line 53
    invoke-super/range {p0 .. p5}, Lorg/checkerframework/org/objectweb/asmx/ClassAdapter;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    move-result-object v0

    .line 54
    .local v0, "methodVisitor":Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;
    new-instance v1, Lscenelib/annotations/io/classfile/CodeOffsetAdapter$1;

    invoke-direct {v1, p0, v0}, Lscenelib/annotations/io/classfile/CodeOffsetAdapter$1;-><init>(Lscenelib/annotations/io/classfile/CodeOffsetAdapter;Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;)V

    return-object v1
.end method
