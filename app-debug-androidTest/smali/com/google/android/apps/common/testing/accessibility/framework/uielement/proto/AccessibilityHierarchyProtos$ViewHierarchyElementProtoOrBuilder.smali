.class public interface abstract Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProtoOrBuilder;
.super Ljava/lang/Object;
.source "AccessibilityHierarchyProtos.java"

# interfaces
.implements Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ViewHierarchyElementProtoOrBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessageOrBuilder<",
        "Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;",
        "Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto$Builder;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract getAccessibilityClassName()Ljava/lang/String;
.end method

.method public abstract getAccessibilityClassNameBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getAccessibilityTraversalAfterId()J
.end method

.method public abstract getAccessibilityTraversalBeforeId()J
.end method

.method public abstract getActions(I)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;
.end method

.method public abstract getActionsCount()I
.end method

.method public abstract getActionsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getBackgroundDrawableColor()I
.end method

.method public abstract getBoundsInScreen()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto;
.end method

.method public abstract getCanScrollBackward()Z
.end method

.method public abstract getCanScrollForward()Z
.end method

.method public abstract getCheckable()Z
.end method

.method public abstract getChecked()Z
.end method

.method public abstract getChildIds(I)I
.end method

.method public abstract getChildIdsCount()I
.end method

.method public abstract getChildIdsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getClassName()Ljava/lang/String;
.end method

.method public abstract getClassNameBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getClickable()Z
.end method

.method public abstract getContentDescription()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto;
.end method

.method public abstract getDrawingOrder()I
.end method

.method public abstract getEditable()Z
.end method

.method public abstract getEnabled()Z
.end method

.method public abstract getFocusable()Z
.end method

.method public abstract getHasTouchDelegate()Z
.end method

.method public abstract getHintText()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto;
.end method

.method public abstract getHintTextColor()I
.end method

.method public abstract getId()I
.end method

.method public abstract getImportantForAccessibility()Z
.end method

.method public abstract getLabeledById()J
.end method

.method public abstract getLayoutParams()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$LayoutParamsProto;
.end method

.method public abstract getLongClickable()Z
.end method

.method public abstract getNonclippedHeight()I
.end method

.method public abstract getNonclippedWidth()I
.end method

.method public abstract getPackageName()Ljava/lang/String;
.end method

.method public abstract getPackageNameBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getParentId()I
.end method

.method public abstract getResourceName()Ljava/lang/String;
.end method

.method public abstract getResourceNameBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getScrollable()Z
.end method

.method public abstract getSuperclasses(I)I
.end method

.method public abstract getSuperclassesCount()I
.end method

.method public abstract getSuperclassesList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getText()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$CharSequenceProto;
.end method

.method public abstract getTextCharacterLocations(I)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto;
.end method

.method public abstract getTextCharacterLocationsCount()I
.end method

.method public abstract getTextCharacterLocationsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTextColor()I
.end method

.method public abstract getTextSize()F
.end method

.method public abstract getTouchDelegateBounds(I)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto;
.end method

.method public abstract getTouchDelegateBoundsCount()I
.end method

.method public abstract getTouchDelegateBoundsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTypefaceStyle()I
.end method

.method public abstract getVisibleToUser()Z
.end method

.method public abstract hasAccessibilityClassName()Z
.end method

.method public abstract hasAccessibilityTraversalAfterId()Z
.end method

.method public abstract hasAccessibilityTraversalBeforeId()Z
.end method

.method public abstract hasBackgroundDrawableColor()Z
.end method

.method public abstract hasBoundsInScreen()Z
.end method

.method public abstract hasCanScrollBackward()Z
.end method

.method public abstract hasCanScrollForward()Z
.end method

.method public abstract hasCheckable()Z
.end method

.method public abstract hasChecked()Z
.end method

.method public abstract hasClassName()Z
.end method

.method public abstract hasClickable()Z
.end method

.method public abstract hasContentDescription()Z
.end method

.method public abstract hasDrawingOrder()Z
.end method

.method public abstract hasEditable()Z
.end method

.method public abstract hasEnabled()Z
.end method

.method public abstract hasFocusable()Z
.end method

.method public abstract hasHasTouchDelegate()Z
.end method

.method public abstract hasHintText()Z
.end method

.method public abstract hasHintTextColor()Z
.end method

.method public abstract hasId()Z
.end method

.method public abstract hasImportantForAccessibility()Z
.end method

.method public abstract hasLabeledById()Z
.end method

.method public abstract hasLayoutParams()Z
.end method

.method public abstract hasLongClickable()Z
.end method

.method public abstract hasNonclippedHeight()Z
.end method

.method public abstract hasNonclippedWidth()Z
.end method

.method public abstract hasPackageName()Z
.end method

.method public abstract hasParentId()Z
.end method

.method public abstract hasResourceName()Z
.end method

.method public abstract hasScrollable()Z
.end method

.method public abstract hasText()Z
.end method

.method public abstract hasTextColor()Z
.end method

.method public abstract hasTextSize()Z
.end method

.method public abstract hasTypefaceStyle()Z
.end method

.method public abstract hasVisibleToUser()Z
.end method
