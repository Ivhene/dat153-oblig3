.class public Lnet/bytebuddy/description/annotation/AnnotationDescription$Latent$Loadable;
.super Lnet/bytebuddy/description/annotation/AnnotationDescription$AbstractBase;
.source "AnnotationDescription.java"

# interfaces
.implements Lnet/bytebuddy/description/annotation/AnnotationDescription$Loadable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/annotation/AnnotationDescription$Latent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "Loadable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S::",
        "Ljava/lang/annotation/Annotation;",
        ">",
        "Lnet/bytebuddy/description/annotation/AnnotationDescription$AbstractBase;",
        "Lnet/bytebuddy/description/annotation/AnnotationDescription$Loadable<",
        "TS;>;"
    }
.end annotation


# instance fields
.field private final annotationType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TS;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lnet/bytebuddy/description/annotation/AnnotationDescription$Latent;


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/description/annotation/AnnotationDescription$Latent;Ljava/lang/Class;)V
    .locals 0
    .param p1, "this$0"    # Lnet/bytebuddy/description/annotation/AnnotationDescription$Latent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TS;>;)V"
        }
    .end annotation

    .line 780
    .local p0, "this":Lnet/bytebuddy/description/annotation/AnnotationDescription$Latent$Loadable;, "Lnet/bytebuddy/description/annotation/AnnotationDescription$Latent$Loadable<TS;>;"
    .local p2, "annotationType":Ljava/lang/Class;, "Ljava/lang/Class<TS;>;"
    iput-object p1, p0, Lnet/bytebuddy/description/annotation/AnnotationDescription$Latent$Loadable;->this$0:Lnet/bytebuddy/description/annotation/AnnotationDescription$Latent;

    invoke-direct {p0}, Lnet/bytebuddy/description/annotation/AnnotationDescription$AbstractBase;-><init>()V

    .line 781
    iput-object p2, p0, Lnet/bytebuddy/description/annotation/AnnotationDescription$Latent$Loadable;->annotationType:Ljava/lang/Class;

    .line 782
    return-void
.end method


# virtual methods
.method public getAnnotationType()Lnet/bytebuddy/description/type/TypeDescription;
    .locals 1

    .line 802
    .local p0, "this":Lnet/bytebuddy/description/annotation/AnnotationDescription$Latent$Loadable;, "Lnet/bytebuddy/description/annotation/AnnotationDescription$Latent$Loadable<TS;>;"
    iget-object v0, p0, Lnet/bytebuddy/description/annotation/AnnotationDescription$Latent$Loadable;->annotationType:Ljava/lang/Class;

    invoke-static {v0}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    return-object v0
.end method

.method public getValue(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/description/annotation/AnnotationValue;
    .locals 1
    .param p1, "property"    # Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;",
            ")",
            "Lnet/bytebuddy/description/annotation/AnnotationValue<",
            "**>;"
        }
    .end annotation

    .line 795
    .local p0, "this":Lnet/bytebuddy/description/annotation/AnnotationDescription$Latent$Loadable;, "Lnet/bytebuddy/description/annotation/AnnotationDescription$Latent$Loadable<TS;>;"
    iget-object v0, p0, Lnet/bytebuddy/description/annotation/AnnotationDescription$Latent$Loadable;->this$0:Lnet/bytebuddy/description/annotation/AnnotationDescription$Latent;

    invoke-virtual {v0, p1}, Lnet/bytebuddy/description/annotation/AnnotationDescription$Latent;->getValue(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-result-object v0

    return-object v0
.end method

.method public load()Ljava/lang/annotation/Annotation;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    .line 788
    .local p0, "this":Lnet/bytebuddy/description/annotation/AnnotationDescription$Latent$Loadable;, "Lnet/bytebuddy/description/annotation/AnnotationDescription$Latent$Loadable<TS;>;"
    iget-object v0, p0, Lnet/bytebuddy/description/annotation/AnnotationDescription$Latent$Loadable;->annotationType:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    iget-object v1, p0, Lnet/bytebuddy/description/annotation/AnnotationDescription$Latent$Loadable;->annotationType:Ljava/lang/Class;

    iget-object v2, p0, Lnet/bytebuddy/description/annotation/AnnotationDescription$Latent$Loadable;->this$0:Lnet/bytebuddy/description/annotation/AnnotationDescription$Latent;

    invoke-static {v2}, Lnet/bytebuddy/description/annotation/AnnotationDescription$Latent;->access$100(Lnet/bytebuddy/description/annotation/AnnotationDescription$Latent;)Ljava/util/Map;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lnet/bytebuddy/description/annotation/AnnotationDescription$AnnotationInvocationHandler;->of(Ljava/lang/ClassLoader;Ljava/lang/Class;Ljava/util/Map;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public prepare(Ljava/lang/Class;)Lnet/bytebuddy/description/annotation/AnnotationDescription$Loadable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lnet/bytebuddy/description/annotation/AnnotationDescription$Loadable<",
            "TT;>;"
        }
    .end annotation

    .line 809
    .local p0, "this":Lnet/bytebuddy/description/annotation/AnnotationDescription$Latent$Loadable;, "Lnet/bytebuddy/description/annotation/AnnotationDescription$Latent$Loadable<TS;>;"
    .local p1, "annotationType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lnet/bytebuddy/description/annotation/AnnotationDescription$Latent$Loadable;->this$0:Lnet/bytebuddy/description/annotation/AnnotationDescription$Latent;

    invoke-virtual {v0, p1}, Lnet/bytebuddy/description/annotation/AnnotationDescription$Latent;->prepare(Ljava/lang/Class;)Lnet/bytebuddy/description/annotation/AnnotationDescription$Latent$Loadable;

    move-result-object v0

    return-object v0
.end method
