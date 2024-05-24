.class Lscenelib/annotations/util/AbstractClassVisitor$4;
.super Ljava/lang/Object;
.source "AbstractClassVisitor.java"

# interfaces
.implements Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscenelib/annotations/util/AbstractClassVisitor;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lscenelib/annotations/util/AbstractClassVisitor;


# direct methods
.method constructor <init>(Lscenelib/annotations/util/AbstractClassVisitor;)V
    .locals 0
    .param p1, "this$0"    # Lscenelib/annotations/util/AbstractClassVisitor;

    .line 171
    iput-object p1, p0, Lscenelib/annotations/util/AbstractClassVisitor$4;->this$0:Lscenelib/annotations/util/AbstractClassVisitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public visitAnnotation(Ljava/lang/String;Z)Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;
    .param p2, "visible"    # Z

    .line 242
    const/4 v0, 0x0

    return-object v0
.end method

.method public visitAnnotationDefault()Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;
    .locals 1

    .line 221
    new-instance v0, Lscenelib/annotations/util/AbstractClassVisitor$4$2;

    invoke-direct {v0, p0}, Lscenelib/annotations/util/AbstractClassVisitor$4$2;-><init>(Lscenelib/annotations/util/AbstractClassVisitor$4;)V

    return-object v0
.end method

.method public visitAttribute(Lorg/checkerframework/org/objectweb/asmx/Attribute;)V
    .locals 0
    .param p1, "attr"    # Lorg/checkerframework/org/objectweb/asmx/Attribute;

    .line 266
    return-void
.end method

.method public visitCode()V
    .locals 0

    .line 268
    return-void
.end method

.method public visitEnd()V
    .locals 0

    .line 342
    return-void
.end method

.method public visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "opcode"    # I
    .param p2, "owner"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "descriptor"    # Ljava/lang/String;

    .line 280
    return-void
.end method

.method public visitIincInsn(II)V
    .locals 0
    .param p1, "var"    # I
    .param p2, "increment"    # I

    .line 297
    return-void
.end method

.method public visitInsn(I)V
    .locals 0
    .param p1, "opcode"    # I

    .line 270
    return-void
.end method

.method public visitInsnAnnotation(ILorg/checkerframework/org/objectweb/asmx/TypePath;Ljava/lang/String;Z)Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;
    .locals 1
    .param p1, "typeRef"    # I
    .param p2, "typePath"    # Lorg/checkerframework/org/objectweb/asmx/TypePath;
    .param p3, "descriptor"    # Ljava/lang/String;
    .param p4, "visible"    # Z

    .line 311
    new-instance v0, Lscenelib/annotations/util/AbstractClassVisitor$4$4;

    invoke-direct {v0, p0}, Lscenelib/annotations/util/AbstractClassVisitor$4$4;-><init>(Lscenelib/annotations/util/AbstractClassVisitor$4;)V

    return-object v0
.end method

.method public visitIntInsn(II)V
    .locals 0
    .param p1, "opcode"    # I
    .param p2, "operand"    # I

    .line 272
    return-void
.end method

.method public varargs visitInvokeDynamicInsn(Ljava/lang/String;Ljava/lang/String;Lorg/checkerframework/org/objectweb/asmx/Handle;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "descriptor"    # Ljava/lang/String;
    .param p3, "bsm"    # Lorg/checkerframework/org/objectweb/asmx/Handle;
    .param p4, "bsmArgs"    # [Ljava/lang/Object;

    .line 288
    return-void
.end method

.method public visitJumpInsn(ILorg/checkerframework/org/objectweb/asmx/Label;)V
    .locals 0
    .param p1, "opcode"    # I
    .param p2, "label"    # Lorg/checkerframework/org/objectweb/asmx/Label;

    .line 291
    return-void
.end method

.method public visitLabel(Lorg/checkerframework/org/objectweb/asmx/Label;)V
    .locals 0
    .param p1, "label"    # Lorg/checkerframework/org/objectweb/asmx/Label;

    .line 293
    return-void
.end method

.method public visitLdcInsn(Ljava/lang/Object;)V
    .locals 0
    .param p1, "cst"    # Ljava/lang/Object;

    .line 295
    return-void
.end method

.method public visitLineNumber(ILorg/checkerframework/org/objectweb/asmx/Label;)V
    .locals 0
    .param p1, "line"    # I
    .param p2, "start"    # Lorg/checkerframework/org/objectweb/asmx/Label;

    .line 338
    return-void
.end method

.method public visitLocalVariable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/checkerframework/org/objectweb/asmx/Label;Lorg/checkerframework/org/objectweb/asmx/Label;I)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "descriptor"    # Ljava/lang/String;
    .param p3, "signature"    # Ljava/lang/String;
    .param p4, "start"    # Lorg/checkerframework/org/objectweb/asmx/Label;
    .param p5, "end"    # Lorg/checkerframework/org/objectweb/asmx/Label;
    .param p6, "index"    # I

    .line 336
    return-void
.end method

.method public visitLookupSwitchInsn(Lorg/checkerframework/org/objectweb/asmx/Label;[I[Lorg/checkerframework/org/objectweb/asmx/Label;)V
    .locals 0
    .param p1, "dflt"    # Lorg/checkerframework/org/objectweb/asmx/Label;
    .param p2, "keys"    # [I
    .param p3, "labels"    # [Lorg/checkerframework/org/objectweb/asmx/Label;

    .line 305
    return-void
.end method

.method public visitMaxs(II)V
    .locals 0
    .param p1, "maxStack"    # I
    .param p2, "maxLocals"    # I

    .line 340
    return-void
.end method

.method public visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "opcode"    # I
    .param p2, "owner"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "descriptor"    # Ljava/lang/String;

    .line 284
    return-void
.end method

.method public visitMultiANewArrayInsn(Ljava/lang/String;I)V
    .locals 0
    .param p1, "descriptor"    # Ljava/lang/String;
    .param p2, "dims"    # I

    .line 307
    return-void
.end method

.method public visitParameterAnnotation(ILjava/lang/String;Z)Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;
    .locals 1
    .param p1, "parameter"    # I
    .param p2, "descriptor"    # Ljava/lang/String;
    .param p3, "visible"    # Z

    .line 247
    new-instance v0, Lscenelib/annotations/util/AbstractClassVisitor$4$3;

    invoke-direct {v0, p0}, Lscenelib/annotations/util/AbstractClassVisitor$4$3;-><init>(Lscenelib/annotations/util/AbstractClassVisitor$4;)V

    return-object v0
.end method

.method public visitTableSwitchInsn(IILorg/checkerframework/org/objectweb/asmx/Label;[Lorg/checkerframework/org/objectweb/asmx/Label;)V
    .locals 0
    .param p1, "min"    # I
    .param p2, "max"    # I
    .param p3, "dflt"    # Lorg/checkerframework/org/objectweb/asmx/Label;
    .param p4, "labels"    # [Lorg/checkerframework/org/objectweb/asmx/Label;

    .line 301
    return-void
.end method

.method public visitTryCatchBlock(Lorg/checkerframework/org/objectweb/asmx/Label;Lorg/checkerframework/org/objectweb/asmx/Label;Lorg/checkerframework/org/objectweb/asmx/Label;Ljava/lang/String;)V
    .locals 0
    .param p1, "start"    # Lorg/checkerframework/org/objectweb/asmx/Label;
    .param p2, "end"    # Lorg/checkerframework/org/objectweb/asmx/Label;
    .param p3, "handler"    # Lorg/checkerframework/org/objectweb/asmx/Label;
    .param p4, "type"    # Ljava/lang/String;

    .line 332
    return-void
.end method

.method public visitTypeAnnotation(Ljava/lang/String;ZZ)Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;
    .param p2, "visible"    # Z
    .param p3, "inCode"    # Z

    .line 175
    new-instance v0, Lscenelib/annotations/util/AbstractClassVisitor$4$1;

    invoke-direct {v0, p0}, Lscenelib/annotations/util/AbstractClassVisitor$4$1;-><init>(Lscenelib/annotations/util/AbstractClassVisitor$4;)V

    return-object v0
.end method

.method public visitTypeInsn(ILjava/lang/String;)V
    .locals 0
    .param p1, "opcode"    # I
    .param p2, "descriptor"    # Ljava/lang/String;

    .line 276
    return-void
.end method

.method public visitVarInsn(II)V
    .locals 0
    .param p1, "opcode"    # I
    .param p2, "var"    # I

    .line 274
    return-void
.end method
