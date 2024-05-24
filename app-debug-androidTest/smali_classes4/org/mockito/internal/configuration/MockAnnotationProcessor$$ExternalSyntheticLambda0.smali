.class public final synthetic Lorg/mockito/internal/configuration/MockAnnotationProcessor$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lorg/mockito/internal/util/Supplier;


# instance fields
.field public final synthetic f$0:Ljava/lang/reflect/Field;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/reflect/Field;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mockito/internal/configuration/MockAnnotationProcessor$$ExternalSyntheticLambda0;->f$0:Ljava/lang/reflect/Field;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/mockito/internal/configuration/MockAnnotationProcessor$$ExternalSyntheticLambda0;->f$0:Ljava/lang/reflect/Field;

    invoke-static {v0}, Lorg/mockito/internal/configuration/MockAnnotationProcessor;->$r8$lambda$UA2MIRdu9tvALgHI_RqnpZlToMM(Ljava/lang/reflect/Field;)Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method
