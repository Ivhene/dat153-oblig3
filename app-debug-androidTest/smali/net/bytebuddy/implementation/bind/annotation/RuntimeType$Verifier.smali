.class public final Lnet/bytebuddy/implementation/bind/annotation/RuntimeType$Verifier;
.super Ljava/lang/Object;
.source "RuntimeType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/bind/annotation/RuntimeType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Verifier"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public static check(Lnet/bytebuddy/description/annotation/AnnotationSource;)Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;
    .locals 2
    .param p0, "annotationSource"    # Lnet/bytebuddy/description/annotation/AnnotationSource;

    .line 61
    invoke-interface {p0}, Lnet/bytebuddy/description/annotation/AnnotationSource;->getDeclaredAnnotations()Lnet/bytebuddy/description/annotation/AnnotationList;

    move-result-object v0

    const-class v1, Lnet/bytebuddy/implementation/bind/annotation/RuntimeType;

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/annotation/AnnotationList;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    invoke-static {v0}, Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;->of(Z)Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    move-result-object v0

    return-object v0
.end method
