.class public interface abstract Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;
.super Ljava/lang/Object;
.source "MethodVisitor.java"

# interfaces
.implements Lorg/checkerframework/org/objectweb/asmx/MemberVisitor;


# virtual methods
.method public abstract visitAnnotation(Ljava/lang/String;Z)Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;
.end method

.method public abstract visitAnnotationDefault()Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;
.end method

.method public abstract visitAttribute(Lorg/checkerframework/org/objectweb/asmx/Attribute;)V
.end method

.method public abstract visitCode()V
.end method

.method public abstract visitEnd()V
.end method

.method public abstract visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract visitIincInsn(II)V
.end method

.method public abstract visitInsn(I)V
.end method

.method public abstract visitInsnAnnotation(ILorg/checkerframework/org/objectweb/asmx/TypePath;Ljava/lang/String;Z)Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;
.end method

.method public abstract visitIntInsn(II)V
.end method

.method public varargs abstract visitInvokeDynamicInsn(Ljava/lang/String;Ljava/lang/String;Lorg/checkerframework/org/objectweb/asmx/Handle;[Ljava/lang/Object;)V
.end method

.method public abstract visitJumpInsn(ILorg/checkerframework/org/objectweb/asmx/Label;)V
.end method

.method public abstract visitLabel(Lorg/checkerframework/org/objectweb/asmx/Label;)V
.end method

.method public abstract visitLdcInsn(Ljava/lang/Object;)V
.end method

.method public abstract visitLineNumber(ILorg/checkerframework/org/objectweb/asmx/Label;)V
.end method

.method public abstract visitLocalVariable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/checkerframework/org/objectweb/asmx/Label;Lorg/checkerframework/org/objectweb/asmx/Label;I)V
.end method

.method public abstract visitLookupSwitchInsn(Lorg/checkerframework/org/objectweb/asmx/Label;[I[Lorg/checkerframework/org/objectweb/asmx/Label;)V
.end method

.method public abstract visitMaxs(II)V
.end method

.method public abstract visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract visitMultiANewArrayInsn(Ljava/lang/String;I)V
.end method

.method public abstract visitParameterAnnotation(ILjava/lang/String;Z)Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;
.end method

.method public abstract visitTableSwitchInsn(IILorg/checkerframework/org/objectweb/asmx/Label;[Lorg/checkerframework/org/objectweb/asmx/Label;)V
.end method

.method public abstract visitTryCatchBlock(Lorg/checkerframework/org/objectweb/asmx/Label;Lorg/checkerframework/org/objectweb/asmx/Label;Lorg/checkerframework/org/objectweb/asmx/Label;Ljava/lang/String;)V
.end method

.method public abstract visitTypeInsn(ILjava/lang/String;)V
.end method

.method public abstract visitVarInsn(II)V
.end method
