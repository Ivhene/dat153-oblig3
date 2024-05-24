.class public Lorg/checkerframework/org/objectweb/asmx/commons/EmptyVisitor;
.super Ljava/lang/Object;
.source "EmptyVisitor.java"

# interfaces
.implements Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;
.implements Lorg/checkerframework/org/objectweb/asmx/FieldVisitor;
.implements Lorg/checkerframework/org/objectweb/asmx/PrecompiledMethodVisitor;
.implements Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;
.implements Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    .line 66
    return-void
.end method

.method public visit(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 236
    return-void
.end method

.method public visitAnnotation(Ljava/lang/String;Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;

    .line 242
    return-object p0
.end method

.method public visitAnnotation(Ljava/lang/String;Z)Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;
    .locals 0
    .param p1, "desc"    # Ljava/lang/String;
    .param p2, "visible"    # Z

    .line 75
    return-object p0
.end method

.method public visitAnnotationDefault()Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;
    .locals 0

    .line 122
    return-object p0
.end method

.method public visitArray(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 246
    return-object p0
.end method

.method public visitAttribute(Lorg/checkerframework/org/objectweb/asmx/Attribute;)V
    .locals 0
    .param p1, "attr"    # Lorg/checkerframework/org/objectweb/asmx/Attribute;

    .line 88
    return-void
.end method

.method public visitCode()V
    .locals 0

    .line 134
    return-void
.end method

.method public visitCurrentPosition(I)V
    .locals 0
    .param p1, "position"    # I

    .line 137
    return-void
.end method

.method public visitEnd()V
    .locals 0

    .line 119
    return-void
.end method

.method public visitEnum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .line 239
    return-void
.end method

.method public visitField(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/checkerframework/org/objectweb/asmx/FieldVisitor;
    .locals 0
    .param p1, "access"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;
    .param p4, "signature"    # Ljava/lang/String;
    .param p5, "value"    # Ljava/lang/Object;

    .line 105
    return-object p0
.end method

.method public visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "opcode"    # I
    .param p2, "owner"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "desc"    # Ljava/lang/String;

    .line 157
    return-void
.end method

.method public visitIincInsn(II)V
    .locals 0
    .param p1, "var"    # I
    .param p2, "increment"    # I

    .line 182
    return-void
.end method

.method public visitInnerClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "outerName"    # Ljava/lang/String;
    .param p3, "innerName"    # Ljava/lang/String;
    .param p4, "access"    # I

    .line 96
    return-void
.end method

.method public visitInsn(I)V
    .locals 0
    .param p1, "opcode"    # I

    .line 140
    return-void
.end method

.method public visitInsnAnnotation(ILorg/checkerframework/org/objectweb/asmx/TypePath;Ljava/lang/String;Z)Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;
    .locals 0
    .param p1, "typeRef"    # I
    .param p2, "typePath"    # Lorg/checkerframework/org/objectweb/asmx/TypePath;
    .param p3, "desc"    # Ljava/lang/String;
    .param p4, "visible"    # Z

    .line 208
    return-object p0
.end method

.method public visitIntInsn(II)V
    .locals 0
    .param p1, "opcode"    # I
    .param p2, "operand"    # I

    .line 143
    return-void
.end method

.method public visitInvokeDynamicInsn(II)V
    .locals 0
    .param p1, "a"    # I
    .param p2, "b"    # I

    .line 199
    return-void
.end method

.method public varargs visitInvokeDynamicInsn(Ljava/lang/String;Ljava/lang/String;Lorg/checkerframework/org/objectweb/asmx/Handle;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;
    .param p3, "bsm"    # Lorg/checkerframework/org/objectweb/asmx/Handle;
    .param p4, "bsmArgs"    # [Ljava/lang/Object;

    .line 170
    return-void
.end method

.method public visitJumpInsn(ILorg/checkerframework/org/objectweb/asmx/Label;)V
    .locals 0
    .param p1, "opcode"    # I
    .param p2, "label"    # Lorg/checkerframework/org/objectweb/asmx/Label;

    .line 173
    return-void
.end method

.method public visitLabel(Lorg/checkerframework/org/objectweb/asmx/Label;)V
    .locals 0
    .param p1, "label"    # Lorg/checkerframework/org/objectweb/asmx/Label;

    .line 176
    return-void
.end method

.method public visitLdcInsn(Ljava/lang/Object;)V
    .locals 0
    .param p1, "cst"    # Ljava/lang/Object;

    .line 179
    return-void
.end method

.method public visitLineNumber(ILorg/checkerframework/org/objectweb/asmx/Label;)V
    .locals 0
    .param p1, "line"    # I
    .param p2, "start"    # Lorg/checkerframework/org/objectweb/asmx/Label;

    .line 230
    return-void
.end method

.method public visitLocalVariable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/checkerframework/org/objectweb/asmx/Label;Lorg/checkerframework/org/objectweb/asmx/Label;I)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;
    .param p3, "signature"    # Ljava/lang/String;
    .param p4, "start"    # Lorg/checkerframework/org/objectweb/asmx/Label;
    .param p5, "end"    # Lorg/checkerframework/org/objectweb/asmx/Label;
    .param p6, "index"    # I

    .line 227
    return-void
.end method

.method public visitLookupSwitchInsn(Lorg/checkerframework/org/objectweb/asmx/Label;[I[Lorg/checkerframework/org/objectweb/asmx/Label;)V
    .locals 0
    .param p1, "dflt"    # Lorg/checkerframework/org/objectweb/asmx/Label;
    .param p2, "keys"    # [I
    .param p3, "labels"    # [Lorg/checkerframework/org/objectweb/asmx/Label;

    .line 193
    return-void
.end method

.method public visitMaxs(II)V
    .locals 0
    .param p1, "maxStack"    # I
    .param p2, "maxLocals"    # I

    .line 233
    return-void
.end method

.method public visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;
    .locals 0
    .param p1, "access"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;
    .param p4, "signature"    # Ljava/lang/String;
    .param p5, "exceptions"    # [Ljava/lang/String;

    .line 115
    return-object p0
.end method

.method public visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "opcode"    # I
    .param p2, "owner"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "desc"    # Ljava/lang/String;

    .line 165
    return-void
.end method

.method public visitMultiANewArrayInsn(Ljava/lang/String;I)V
    .locals 0
    .param p1, "desc"    # Ljava/lang/String;
    .param p2, "dims"    # I

    .line 196
    return-void
.end method

.method public visitOuterClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "owner"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;

    .line 72
    return-void
.end method

.method public visitParameterAnnotation(ILjava/lang/String;Z)Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;
    .locals 0
    .param p1, "parameter"    # I
    .param p2, "desc"    # Ljava/lang/String;
    .param p3, "visible"    # Z

    .line 130
    return-object p0
.end method

.method public visitSource(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "debug"    # Ljava/lang/String;

    .line 69
    return-void
.end method

.method public visitTableSwitchInsn(IILorg/checkerframework/org/objectweb/asmx/Label;[Lorg/checkerframework/org/objectweb/asmx/Label;)V
    .locals 0
    .param p1, "min"    # I
    .param p2, "max"    # I
    .param p3, "dflt"    # Lorg/checkerframework/org/objectweb/asmx/Label;
    .param p4, "labels"    # [Lorg/checkerframework/org/objectweb/asmx/Label;

    .line 190
    return-void
.end method

.method public visitTryCatchBlock(Lorg/checkerframework/org/objectweb/asmx/Label;Lorg/checkerframework/org/objectweb/asmx/Label;Lorg/checkerframework/org/objectweb/asmx/Label;Ljava/lang/String;)V
    .locals 0
    .param p1, "start"    # Lorg/checkerframework/org/objectweb/asmx/Label;
    .param p2, "end"    # Lorg/checkerframework/org/objectweb/asmx/Label;
    .param p3, "handler"    # Lorg/checkerframework/org/objectweb/asmx/Label;
    .param p4, "type"    # Ljava/lang/String;

    .line 217
    return-void
.end method

.method public visitTypeAnnotation(Ljava/lang/String;ZZ)Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;
    .locals 0
    .param p1, "desc"    # Ljava/lang/String;
    .param p2, "visible"    # Z
    .param p3, "inCode"    # Z

    .line 83
    return-object p0
.end method

.method public visitTypeInsn(ILjava/lang/String;)V
    .locals 0
    .param p1, "opcode"    # I
    .param p2, "desc"    # Ljava/lang/String;

    .line 149
    return-void
.end method

.method public visitVarInsn(II)V
    .locals 0
    .param p1, "opcode"    # I
    .param p2, "var"    # I

    .line 146
    return-void
.end method

.method public visitXBoundIndex(I)V
    .locals 0
    .param p1, "bound_index"    # I

    .line 269
    return-void
.end method

.method public visitXExceptionIndex(I)V
    .locals 0
    .param p1, "exception_index"    # I

    .line 274
    return-void
.end method

.method public visitXIndex(I)V
    .locals 0
    .param p1, "index"    # I

    .line 265
    return-void
.end method

.method public visitXLength(I)V
    .locals 0
    .param p1, "length"    # I

    .line 263
    return-void
.end method

.method public visitXLocation(Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;)V
    .locals 0
    .param p1, "location"    # Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;

    .line 257
    return-void
.end method

.method public visitXLocationLength(I)V
    .locals 0
    .param p1, "location_length"    # I

    .line 255
    return-void
.end method

.method public visitXNameAndArgsSize()V
    .locals 0

    .line 276
    return-void
.end method

.method public visitXNumEntries(I)V
    .locals 0
    .param p1, "num_entries"    # I

    .line 259
    return-void
.end method

.method public visitXOffset(I)V
    .locals 0
    .param p1, "offset"    # I

    .line 253
    return-void
.end method

.method public visitXParamIndex(I)V
    .locals 0
    .param p1, "param_index"    # I

    .line 267
    return-void
.end method

.method public visitXStartPc(I)V
    .locals 0
    .param p1, "start_pc"    # I

    .line 261
    return-void
.end method

.method public visitXTargetType(I)V
    .locals 0
    .param p1, "target_type"    # I

    .line 251
    return-void
.end method

.method public visitXTypeIndex(I)V
    .locals 0
    .param p1, "type_index"    # I

    .line 271
    return-void
.end method
