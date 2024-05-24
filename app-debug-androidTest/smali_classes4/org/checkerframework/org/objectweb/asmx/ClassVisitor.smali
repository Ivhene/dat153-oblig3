.class public interface abstract Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;
.super Ljava/lang/Object;
.source "ClassVisitor.java"

# interfaces
.implements Lorg/checkerframework/org/objectweb/asmx/MemberVisitor;


# virtual methods
.method public abstract visit(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
.end method

.method public abstract visitAnnotation(Ljava/lang/String;Z)Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;
.end method

.method public abstract visitAttribute(Lorg/checkerframework/org/objectweb/asmx/Attribute;)V
.end method

.method public abstract visitEnd()V
.end method

.method public abstract visitField(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/checkerframework/org/objectweb/asmx/FieldVisitor;
.end method

.method public abstract visitInnerClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method public abstract visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;
.end method

.method public abstract visitOuterClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract visitSource(Ljava/lang/String;Ljava/lang/String;)V
.end method
