.class public interface abstract Lnet/bytebuddy/description/annotation/AnnotationValue;
.super Ljava/lang/Object;
.source "AnnotationValue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/description/annotation/AnnotationValue$ForIncompatibleType;,
        Lnet/bytebuddy/description/annotation/AnnotationValue$ForMissingValue;,
        Lnet/bytebuddy/description/annotation/AnnotationValue$ForMismatchedType;,
        Lnet/bytebuddy/description/annotation/AnnotationValue$ForMissingType;,
        Lnet/bytebuddy/description/annotation/AnnotationValue$ForDescriptionArray;,
        Lnet/bytebuddy/description/annotation/AnnotationValue$ForTypeDescription;,
        Lnet/bytebuddy/description/annotation/AnnotationValue$ForEnumerationDescription;,
        Lnet/bytebuddy/description/annotation/AnnotationValue$ForAnnotationDescription;,
        Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant;,
        Lnet/bytebuddy/description/annotation/AnnotationValue$AbstractBase;,
        Lnet/bytebuddy/description/annotation/AnnotationValue$Sort;,
        Lnet/bytebuddy/description/annotation/AnnotationValue$State;,
        Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded;,
        Lnet/bytebuddy/description/annotation/AnnotationValue$RenderingDispatcher;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "S:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final UNDEFINED:Lnet/bytebuddy/description/annotation/AnnotationValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/bytebuddy/description/annotation/AnnotationValue<",
            "**>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    const/4 v0, 0x0

    sput-object v0, Lnet/bytebuddy/description/annotation/AnnotationValue;->UNDEFINED:Lnet/bytebuddy/description/annotation/AnnotationValue;

    return-void
.end method


# virtual methods
.method public abstract filter(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/description/annotation/AnnotationValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;",
            ")",
            "Lnet/bytebuddy/description/annotation/AnnotationValue<",
            "TT;TS;>;"
        }
    .end annotation
.end method

.method public abstract filter(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Lnet/bytebuddy/description/type/TypeDefinition;)Lnet/bytebuddy/description/annotation/AnnotationValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;",
            "Lnet/bytebuddy/description/type/TypeDefinition;",
            ")",
            "Lnet/bytebuddy/description/annotation/AnnotationValue<",
            "TT;TS;>;"
        }
    .end annotation
.end method

.method public abstract getSort()Lnet/bytebuddy/description/annotation/AnnotationValue$Sort;
.end method

.method public abstract getState()Lnet/bytebuddy/description/annotation/AnnotationValue$State;
.end method

.method public abstract load(Ljava/lang/ClassLoader;)Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            ")",
            "Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded<",
            "TS;>;"
        }
    .end annotation
.end method

.method public abstract resolve()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract resolve(Ljava/lang/Class;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<W:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "+TW;>;)TW;"
        }
    .end annotation
.end method
